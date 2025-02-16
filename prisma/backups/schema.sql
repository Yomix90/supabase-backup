

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."user_permission" AS ENUM (
    'manage_impound',
    'manage_impound_payments',
    'manage_shops',
    'manage_shop_payments',
    'manage_beverages',
    'manage_beverage_payments',
    'manage_lands',
    'manage_land_payments',
    'manage_parking',
    'manage_parking_payments',
    'manage_occupation',
    'manage_occupation_payments',
    'manage_users',
    'manage_taxpayers',
    'manage_other_articles'
);


ALTER TYPE "public"."user_permission" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."backup_all_tables"() RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
DECLARE
    table_name text;
    backup_table_name text;
    current_timestamp text;
BEGIN
    -- Obtenir le timestamp actuel pour le nom des tables de sauvegarde
    SELECT to_char(now(), 'YYYY-MM-DD HH24:MI:SS') INTO current_timestamp;
    
    -- Parcourir toutes les tables publiques
    FOR table_name IN 
        SELECT tablename 
        FROM pg_tables 
        WHERE schemaname = 'public'
    LOOP
        -- Créer un nom pour la table de sauvegarde
        backup_table_name := table_name || '_backup_' || current_timestamp;
        
        -- Créer une copie de la table avec toutes les données
        EXECUTE format(
            'CREATE TABLE %I AS SELECT * FROM %I',
            backup_table_name,
            table_name
        );
    END LOOP;
END;
$$;


ALTER FUNCTION "public"."backup_all_tables"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."export_database_data"() RETURNS "jsonb"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
DECLARE
    result jsonb = '{}'::jsonb;
    table_name text;
    table_data jsonb;
    schema_data jsonb;
    foreign_keys jsonb;
BEGIN
    -- Exporter la structure des tables
    SELECT jsonb_agg(jsonb_build_object(
        'table_name', tables.table_name,
        'columns', (
            SELECT jsonb_agg(jsonb_build_object(
                'column_name', columns.column_name,
                'data_type', columns.data_type,
                'is_nullable', columns.is_nullable,
                'column_default', columns.column_default
            ))
            FROM information_schema.columns
            WHERE columns.table_schema = 'public' 
            AND columns.table_name = tables.table_name
        )
    ))
    FROM information_schema.tables
    WHERE tables.table_schema = 'public'
    AND tables.table_name NOT LIKE '%backup%'
    INTO schema_data;

    -- Exporter les clés étrangères
    SELECT jsonb_agg(jsonb_build_object(
        'table_name', tc.table_name,
        'column_name', kcu.column_name,
        'foreign_table_name', ccu.table_name,
        'foreign_column_name', ccu.column_name
    ))
    FROM information_schema.table_constraints tc
    JOIN information_schema.key_column_usage kcu
        ON tc.constraint_name = kcu.constraint_name
    JOIN information_schema.constraint_column_usage ccu
        ON ccu.constraint_name = tc.constraint_name
    WHERE tc.constraint_type = 'FOREIGN KEY'
    AND tc.table_schema = 'public'
    INTO foreign_keys;

    -- Ajouter la structure et les relations au résultat
    result = jsonb_build_object(
        'schema', schema_data,
        'foreign_keys', foreign_keys
    );

    -- Exporter les données des tables
    FOR table_name IN 
        SELECT tablename 
        FROM pg_tables 
        WHERE schemaname = 'public'
        AND tablename NOT LIKE '%backup%'
    LOOP
        EXECUTE format(
            'SELECT jsonb_agg(to_jsonb(t)) FROM %I t',
            table_name
        ) INTO table_data;
        
        IF table_data IS NULL THEN
            table_data = '[]'::jsonb;
        END IF;
        
        result = result || jsonb_build_object('data', 
            (result -> 'data')::jsonb || jsonb_build_object(table_name, table_data)
        );
    END LOOP;
    
    RETURN result;
END;
$$;


ALTER FUNCTION "public"."export_database_data"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_next_declaration_number"("p_year" integer) RETURNS "text"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  -- Réinitialiser la séquence si l'année change
  IF EXISTS (
    SELECT 1 
    FROM declaration_numbers 
    WHERE year = p_year 
    LIMIT 1
  ) THEN
    NULL;
  ELSE
    ALTER SEQUENCE declaration_number_seq RESTART;
  END IF;
  
  -- Générer le prochain numéro
  RETURN p_year || '/' || LPAD(nextval('declaration_number_seq')::TEXT, 4, '0');
END;
$$;


ALTER FUNCTION "public"."get_next_declaration_number"("p_year" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_next_land_file_number"() RETURNS "text"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
    next_number integer;
    next_file_number text;
BEGIN
    SELECT nextval('lands_file_number_seq') INTO next_number;
    next_file_number := 'F' || to_char(next_number, 'FM000000');
    RETURN next_file_number;
END;
$$;


ALTER FUNCTION "public"."get_next_land_file_number"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_new_impound_manager"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  INSERT INTO public.impound_managers (id)
  VALUES (NEW.id);
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."handle_new_impound_manager"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
begin
  insert into public.profiles (id)
  values (new.id);
  return new;
end;
$$;


ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric) RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  UPDATE shops
  SET rate = rate * rate_multiplier
  WHERE status = 'constructed';
END;
$$;


ALTER FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric, "increase_date" "date") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  -- Mettre à jour les tarifs
  UPDATE shops
  SET rate = rate * rate_multiplier
  WHERE status = 'constructed';
  
  -- Enregistrer l'augmentation
  INSERT INTO shop_rate_increases (increase_date, increase_percentage, created_by)
  VALUES (increase_date, ((rate_multiplier - 1) * 100), auth.uid());
END;
$$;


ALTER FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric, "increase_date" "date") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."increase_shop_rates_for_selected"("shop_ids" "uuid"[], "rate_multiplier" numeric, "increase_date" "date") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
BEGIN
  -- Update rates for selected shops
  UPDATE shops
  SET rate = rate * rate_multiplier
  WHERE id = ANY(shop_ids)
  AND status = 'constructed';
  
  -- Record the increase
  INSERT INTO shop_rate_increases (
    increase_date, 
    increase_percentage, 
    created_by
  )
  VALUES (
    increase_date, 
    ((rate_multiplier - 1) * 100),
    auth.uid()
  );
END;
$$;


ALTER FUNCTION "public"."increase_shop_rates_for_selected"("shop_ids" "uuid"[], "rate_multiplier" numeric, "increase_date" "date") OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."activity_logs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid",
    "action_type" "text" NOT NULL,
    "entity_type" "text" NOT NULL,
    "entity_id" "uuid",
    "details" "jsonb",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."activity_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."auction_groups" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "auction_number" "text" NOT NULL,
    "auction_date" timestamp with time zone NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."auction_groups" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."auction_sales" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "auction_group_id" "uuid",
    "vehicle_id" "uuid",
    "sale_receipt_number" "text",
    "sale_amount" numeric,
    "sale_percentage" numeric,
    "sale_receipt_scan_url" "text",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"())
);


ALTER TABLE "public"."auction_sales" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."beverage_closures" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "establishment_id" "uuid" NOT NULL,
    "closure_date" "date" NOT NULL,
    "reason" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."beverage_closures" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."beverage_declarations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "establishment_id" "uuid" NOT NULL,
    "year" integer NOT NULL,
    "declaration_number" "text",
    "declaration_date" "date",
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."beverage_declarations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."beverage_establishments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "file_number" "text" NOT NULL,
    "establishment_name" "text" NOT NULL,
    "owner_name" "text" NOT NULL,
    "owner_id_number" "text",
    "patent_number" "text",
    "address" "text",
    "phone" "text",
    "annual_declaration_date" "date",
    "estimated_revenue" numeric DEFAULT 0,
    "status" "text" DEFAULT 'active'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "declaration_number" "text",
    "evaluation_amount" numeric DEFAULT 0
);


ALTER TABLE "public"."beverage_establishments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."beverage_payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "establishment_id" "uuid" NOT NULL,
    "year" integer NOT NULL,
    "quarter" integer NOT NULL,
    "revenue" numeric DEFAULT 0 NOT NULL,
    "odp_amount" numeric DEFAULT 0,
    "declaration_penalty" numeric DEFAULT 0,
    "total_amount" numeric NOT NULL,
    "receipt_number" "text",
    "payment_date" "date",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "beverage_payments_quarter_check" CHECK ((("quarter" >= 1) AND ("quarter" <= 4)))
);


ALTER TABLE "public"."beverage_payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."beverage_settings" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "tax_rate" numeric DEFAULT 10 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "valid_from" "date" NOT NULL,
    "valid_to" "date",
    "declaration_deadline_month" integer DEFAULT 4,
    "declaration_deadline_day" integer DEFAULT 30,
    "late_declaration_penalty_rate" numeric DEFAULT 10
);


ALTER TABLE "public"."beverage_settings" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."building_permits" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "land_id" "uuid" NOT NULL,
    "permit_number" "text" NOT NULL,
    "issue_date" "date" NOT NULL,
    "expiry_date" "date" NOT NULL,
    "status" "text" DEFAULT 'active'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."building_permits" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."declaration_number_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."declaration_number_seq" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."declaration_numbers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "declaration_type" "text" NOT NULL,
    "year" integer NOT NULL,
    "number" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"()
);


ALTER TABLE "public"."declaration_numbers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."depositors" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."depositors" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."impound_managers" (
    "id" "uuid" NOT NULL,
    "first_name" "text",
    "last_name" "text",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."impound_managers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."impounded_vehicles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "vehicle_type_id" "uuid" NOT NULL,
    "license_plate" "text" NOT NULL,
    "depositor_id" "uuid" NOT NULL,
    "entry_date" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "payment_receipt_number" "text",
    "payment_date" timestamp with time zone,
    "exit_date" timestamp with time zone,
    "condition" "text",
    "auction_group_id" "uuid",
    "auction_date" timestamp with time zone,
    "status" "text" DEFAULT 'impounded'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    CONSTRAINT "impounded_vehicles_condition_check" CHECK ((("condition" IS NULL) OR ("length"(TRIM(BOTH FROM "condition")) > 0))),
    CONSTRAINT "impounded_vehicles_status_check" CHECK (("status" = ANY (ARRAY['impounded'::"text", 'pending_exit'::"text", 'exited'::"text", 'auction'::"text"])))
);


ALTER TABLE "public"."impounded_vehicles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."land_declarations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "land_id" "uuid",
    "year" integer NOT NULL,
    "declaration_number" "text",
    "declaration_date" "date",
    "is_null_declaration" boolean DEFAULT false,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."land_declarations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."land_payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "land_id" "uuid" NOT NULL,
    "year" integer NOT NULL,
    "amount" numeric NOT NULL,
    "penalty" numeric DEFAULT 0 NOT NULL,
    "surcharge" numeric DEFAULT 0 NOT NULL,
    "fine" numeric DEFAULT 0 NOT NULL,
    "total_amount" numeric NOT NULL,
    "receipt_number" "text" NOT NULL,
    "payment_date" "date" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."land_payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."land_surveys" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "location" "text" NOT NULL,
    "lot_number" "text" NOT NULL,
    "title_deed" "text" NOT NULL,
    "surface" numeric NOT NULL,
    "zone_id" "uuid" NOT NULL,
    "owner_name" "text" NOT NULL,
    "owner_id_number" "text",
    "address" "text",
    "phone" "text",
    "survey_date" "date" DEFAULT CURRENT_DATE NOT NULL,
    "status" "text" DEFAULT 'pending'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "declaration_number" "text",
    "declaration_date" "date"
);


ALTER TABLE "public"."land_surveys" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."land_zones" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "rate" numeric NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."land_zones" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."lands" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "file_number" "text" NOT NULL,
    "location" "text" NOT NULL,
    "lot_number" "text" NOT NULL,
    "title_deed" "text" NOT NULL,
    "surface" numeric NOT NULL,
    "zone_id" "uuid" NOT NULL,
    "owner_name" "text" NOT NULL,
    "owner_id_number" "text",
    "address" "text",
    "phone" "text",
    "acquisition_date" "date" NOT NULL,
    "status" "text" DEFAULT 'active'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "annual_declaration_number" "text",
    "annual_declaration_date" "date",
    "exemption_status" "text" DEFAULT 'none'::"text",
    "exemption_start_date" "date",
    "exemption_end_date" "date",
    "subdivision_id" "uuid",
    "evaluation_amount" numeric DEFAULT 0
);


ALTER TABLE "public"."lands" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."lands_file_number_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."lands_file_number_seq" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notes" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "title" "text" NOT NULL,
    "content" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "user_id" "uuid"
);


ALTER TABLE "public"."notes" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."notice_templates" (
    "id" "text" NOT NULL,
    "content" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "name" "text",
    "logo_url" "text"
);


ALTER TABLE "public"."notice_templates" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."occupancy_permits" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "building_permit_id" "uuid" NOT NULL,
    "permit_number" "text" NOT NULL,
    "issue_date" "date" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."occupancy_permits" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."occupation_payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "occupation_id" "uuid" NOT NULL,
    "year" integer NOT NULL,
    "quarter" integer NOT NULL,
    "amount" numeric NOT NULL,
    "receipt_number" "text" NOT NULL,
    "payment_date" "date" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."occupation_payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."occupation_types" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "rate" numeric NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."occupation_types" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."other_article_forecasts" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "article_id" "uuid",
    "year" integer NOT NULL,
    "amount" numeric NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."other_article_forecasts" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."other_article_revenues" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "article_id" "uuid",
    "year" integer NOT NULL,
    "month" integer NOT NULL,
    "amount" numeric NOT NULL,
    "receipt_number" "text",
    "payment_date" "date" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."other_article_revenues" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."other_articles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "title" "text" NOT NULL,
    "status" "text" DEFAULT 'active'::"text" NOT NULL,
    "evaluation_amount" numeric DEFAULT 0,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."other_articles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."parking_payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "permit_id" "uuid" NOT NULL,
    "year" integer NOT NULL,
    "quarter" integer NOT NULL,
    "transport_tax" numeric DEFAULT 0 NOT NULL,
    "parking_fee" numeric DEFAULT 0 NOT NULL,
    "total_amount" numeric NOT NULL,
    "receipt_number" "text",
    "payment_date" "date",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    CONSTRAINT "parking_payments_quarter_check" CHECK ((("quarter" >= 1) AND ("quarter" <= 4)))
);


ALTER TABLE "public"."parking_payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."parking_permits" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "permit_number" "text" NOT NULL,
    "vehicle_type_id" "uuid" NOT NULL,
    "owner_name" "text" NOT NULL,
    "owner_id_number" "text",
    "license_plate" "text" NOT NULL,
    "address" "text",
    "phone" "text",
    "status" "text" DEFAULT 'active'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "evaluation_amount" numeric DEFAULT 0,
    CONSTRAINT "parking_permits_status_check" CHECK (("status" = ANY (ARRAY['active'::"text", 'inactive'::"text"])))
);


ALTER TABLE "public"."parking_permits" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."parking_settings" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "vehicle_type_id" "uuid" NOT NULL,
    "transport_tax_rate" numeric DEFAULT 0 NOT NULL,
    "parking_fee_rate" numeric DEFAULT 0 NOT NULL,
    "valid_from" "date" NOT NULL,
    "valid_to" "date",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."parking_settings" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."parking_vehicle_types" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."parking_vehicle_types" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."profiles" (
    "id" "uuid" NOT NULL,
    "first_name" "text",
    "last_name" "text",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "permissions" "public"."user_permission"[] DEFAULT '{}'::"public"."user_permission"[]
);


ALTER TABLE "public"."profiles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."sectors" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."sectors" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."shop_payment_pauses" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "shop_id" "uuid" NOT NULL,
    "start_date" "date" NOT NULL,
    "end_date" "date",
    "reason" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "created_by" "uuid"
);


ALTER TABLE "public"."shop_payment_pauses" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."shop_payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "shop_id" "uuid" NOT NULL,
    "start_period" "date" NOT NULL,
    "end_period" "date" NOT NULL,
    "amount" numeric NOT NULL,
    "receipt_number" "text" NOT NULL,
    "payment_date" "date" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."shop_payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."shop_rate_increases" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "increase_date" "date" NOT NULL,
    "increase_percentage" numeric NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "created_by" "uuid"
);


ALTER TABLE "public"."shop_rate_increases" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."shops" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "sector_id" "uuid" NOT NULL,
    "shop_number" "text" NOT NULL,
    "surface" numeric NOT NULL,
    "status" "text" NOT NULL,
    "owner_name" "text",
    "owner_id_number" "text",
    "address" "text",
    "phone" "text",
    "occupation_date" "date",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "rate" numeric DEFAULT 0,
    "evaluation_amount" numeric DEFAULT 0,
    "last_payment_date" "date",
    "monthly_rate" numeric DEFAULT 0,
    CONSTRAINT "shops_status_check" CHECK (("status" = ANY (ARRAY['constructed'::"text", 'not_constructed'::"text"])))
);


ALTER TABLE "public"."shops" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."souk_payments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "rental_id" "uuid",
    "start_period" "date" NOT NULL,
    "end_period" "date" NOT NULL,
    "amount" numeric NOT NULL,
    "receipt_number" "text" NOT NULL,
    "payment_date" "date" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."souk_payments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."souk_rentals" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "tenant_name" "text" NOT NULL,
    "id_number" "text",
    "address" "text",
    "phone" "text",
    "rental_amount" numeric NOT NULL,
    "start_date" "date" NOT NULL,
    "end_date" "date",
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "status" "text" DEFAULT 'active'::"text" NOT NULL
);


ALTER TABLE "public"."souk_rentals" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."subdivisions" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."subdivisions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."taxpayers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "id_number" "text" NOT NULL,
    "address" "text",
    "articles" "text"[] DEFAULT '{}'::"text"[],
    "total_unpaid" numeric DEFAULT 0,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."taxpayers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."temporary_occupations" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "file_number" "text" NOT NULL,
    "owner_name" "text" NOT NULL,
    "owner_id_number" "text",
    "occupation_type_id" "uuid" NOT NULL,
    "surface" numeric NOT NULL,
    "address" "text",
    "phone" "text",
    "status" "text" DEFAULT 'active'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL,
    "evaluation_amount" numeric DEFAULT 0
);


ALTER TABLE "public"."temporary_occupations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_table_preferences" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid",
    "table_name" "text" NOT NULL,
    "columns" "jsonb" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."user_table_preferences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."vehicle_types" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "daily_rate" numeric(10,2) NOT NULL,
    "created_at" timestamp with time zone DEFAULT "timezone"('utc'::"text", "now"()) NOT NULL
);


ALTER TABLE "public"."vehicle_types" OWNER TO "postgres";


ALTER TABLE ONLY "public"."activity_logs"
    ADD CONSTRAINT "activity_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."auction_groups"
    ADD CONSTRAINT "auction_groups_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."auction_sales"
    ADD CONSTRAINT "auction_sales_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."beverage_closures"
    ADD CONSTRAINT "beverage_closures_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."beverage_declarations"
    ADD CONSTRAINT "beverage_declarations_establishment_id_year_key" UNIQUE ("establishment_id", "year");



ALTER TABLE ONLY "public"."beverage_declarations"
    ADD CONSTRAINT "beverage_declarations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."beverage_establishments"
    ADD CONSTRAINT "beverage_establishments_file_number_key" UNIQUE ("file_number");



ALTER TABLE ONLY "public"."beverage_establishments"
    ADD CONSTRAINT "beverage_establishments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."beverage_payments"
    ADD CONSTRAINT "beverage_payments_establishment_id_year_quarter_key" UNIQUE ("establishment_id", "year", "quarter");



ALTER TABLE ONLY "public"."beverage_payments"
    ADD CONSTRAINT "beverage_payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."beverage_settings"
    ADD CONSTRAINT "beverage_settings_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."building_permits"
    ADD CONSTRAINT "building_permits_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."declaration_numbers"
    ADD CONSTRAINT "declaration_numbers_declaration_type_year_number_key" UNIQUE ("declaration_type", "year", "number");



ALTER TABLE ONLY "public"."declaration_numbers"
    ADD CONSTRAINT "declaration_numbers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."depositors"
    ADD CONSTRAINT "depositors_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."impound_managers"
    ADD CONSTRAINT "impound_managers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."impounded_vehicles"
    ADD CONSTRAINT "impounded_vehicles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."land_declarations"
    ADD CONSTRAINT "land_declarations_land_id_year_key" UNIQUE ("land_id", "year");



ALTER TABLE ONLY "public"."land_declarations"
    ADD CONSTRAINT "land_declarations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."land_payments"
    ADD CONSTRAINT "land_payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."land_surveys"
    ADD CONSTRAINT "land_surveys_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."land_zones"
    ADD CONSTRAINT "land_zones_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."lands"
    ADD CONSTRAINT "lands_file_number_unique" UNIQUE ("file_number");



ALTER TABLE ONLY "public"."lands"
    ADD CONSTRAINT "lands_lot_number_key" UNIQUE ("lot_number");



ALTER TABLE ONLY "public"."lands"
    ADD CONSTRAINT "lands_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notes"
    ADD CONSTRAINT "notes_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."notice_templates"
    ADD CONSTRAINT "notice_templates_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."occupancy_permits"
    ADD CONSTRAINT "occupancy_permits_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."occupation_payments"
    ADD CONSTRAINT "occupation_payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."occupation_types"
    ADD CONSTRAINT "occupation_types_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."other_article_forecasts"
    ADD CONSTRAINT "other_article_forecasts_article_id_year_key" UNIQUE ("article_id", "year");



ALTER TABLE ONLY "public"."other_article_forecasts"
    ADD CONSTRAINT "other_article_forecasts_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."other_article_revenues"
    ADD CONSTRAINT "other_article_revenues_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."other_articles"
    ADD CONSTRAINT "other_articles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."parking_payments"
    ADD CONSTRAINT "parking_payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."parking_permits"
    ADD CONSTRAINT "parking_permits_permit_number_key" UNIQUE ("permit_number");



ALTER TABLE ONLY "public"."parking_permits"
    ADD CONSTRAINT "parking_permits_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."parking_settings"
    ADD CONSTRAINT "parking_settings_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."parking_vehicle_types"
    ADD CONSTRAINT "parking_vehicle_types_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."sectors"
    ADD CONSTRAINT "sectors_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."shop_payment_pauses"
    ADD CONSTRAINT "shop_payment_pauses_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."shop_payments"
    ADD CONSTRAINT "shop_payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."shop_rate_increases"
    ADD CONSTRAINT "shop_rate_increases_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."shops"
    ADD CONSTRAINT "shops_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."shops"
    ADD CONSTRAINT "shops_sector_id_shop_number_key" UNIQUE ("sector_id", "shop_number");



ALTER TABLE ONLY "public"."souk_payments"
    ADD CONSTRAINT "souk_payments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."souk_rentals"
    ADD CONSTRAINT "souk_rentals_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."subdivisions"
    ADD CONSTRAINT "subdivisions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."taxpayers"
    ADD CONSTRAINT "taxpayers_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."temporary_occupations"
    ADD CONSTRAINT "temporary_occupations_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."lands"
    ADD CONSTRAINT "unique_file_number" UNIQUE ("file_number");



ALTER TABLE ONLY "public"."user_table_preferences"
    ADD CONSTRAINT "user_table_preferences_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_table_preferences"
    ADD CONSTRAINT "user_table_preferences_table_name_user_id_key" UNIQUE ("table_name", "user_id");



ALTER TABLE ONLY "public"."user_table_preferences"
    ADD CONSTRAINT "user_table_preferences_user_id_table_name_key" UNIQUE ("user_id", "table_name");



ALTER TABLE ONLY "public"."vehicle_types"
    ADD CONSTRAINT "vehicle_types_pkey" PRIMARY KEY ("id");



CREATE INDEX "idx_activity_logs_created_at" ON "public"."activity_logs" USING "btree" ("created_at");



CREATE INDEX "idx_activity_logs_entity_type" ON "public"."activity_logs" USING "btree" ("entity_type");



CREATE INDEX "idx_activity_logs_user_id" ON "public"."activity_logs" USING "btree" ("user_id");



CREATE INDEX "idx_auction_sales_auction_group_id" ON "public"."auction_sales" USING "btree" ("auction_group_id");



CREATE INDEX "idx_auction_sales_vehicle_id" ON "public"."auction_sales" USING "btree" ("vehicle_id");



CREATE INDEX "idx_building_permits_land_id" ON "public"."building_permits" USING "btree" ("land_id");



CREATE INDEX "idx_occupancy_permits_building_permit_id" ON "public"."occupancy_permits" USING "btree" ("building_permit_id");



ALTER TABLE ONLY "public"."activity_logs"
    ADD CONSTRAINT "activity_logs_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."auction_sales"
    ADD CONSTRAINT "auction_sales_auction_group_id_fkey" FOREIGN KEY ("auction_group_id") REFERENCES "public"."auction_groups"("id");



ALTER TABLE ONLY "public"."auction_sales"
    ADD CONSTRAINT "auction_sales_vehicle_id_fkey" FOREIGN KEY ("vehicle_id") REFERENCES "public"."impounded_vehicles"("id");



ALTER TABLE ONLY "public"."beverage_closures"
    ADD CONSTRAINT "beverage_closures_establishment_id_fkey" FOREIGN KEY ("establishment_id") REFERENCES "public"."beverage_establishments"("id");



ALTER TABLE ONLY "public"."beverage_declarations"
    ADD CONSTRAINT "beverage_declarations_establishment_id_fkey" FOREIGN KEY ("establishment_id") REFERENCES "public"."beverage_establishments"("id");



ALTER TABLE ONLY "public"."beverage_payments"
    ADD CONSTRAINT "beverage_payments_establishment_id_fkey" FOREIGN KEY ("establishment_id") REFERENCES "public"."beverage_establishments"("id");



ALTER TABLE ONLY "public"."building_permits"
    ADD CONSTRAINT "building_permits_land_id_fkey" FOREIGN KEY ("land_id") REFERENCES "public"."lands"("id");



ALTER TABLE ONLY "public"."impound_managers"
    ADD CONSTRAINT "impound_managers_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."impounded_vehicles"
    ADD CONSTRAINT "impounded_vehicles_auction_group_id_fkey" FOREIGN KEY ("auction_group_id") REFERENCES "public"."auction_groups"("id");



ALTER TABLE ONLY "public"."impounded_vehicles"
    ADD CONSTRAINT "impounded_vehicles_depositor_id_fkey" FOREIGN KEY ("depositor_id") REFERENCES "public"."depositors"("id");



ALTER TABLE ONLY "public"."impounded_vehicles"
    ADD CONSTRAINT "impounded_vehicles_vehicle_type_id_fkey" FOREIGN KEY ("vehicle_type_id") REFERENCES "public"."vehicle_types"("id");



ALTER TABLE ONLY "public"."land_declarations"
    ADD CONSTRAINT "land_declarations_land_id_fkey" FOREIGN KEY ("land_id") REFERENCES "public"."lands"("id");



ALTER TABLE ONLY "public"."land_payments"
    ADD CONSTRAINT "land_payments_land_id_fkey" FOREIGN KEY ("land_id") REFERENCES "public"."lands"("id");



ALTER TABLE ONLY "public"."land_surveys"
    ADD CONSTRAINT "land_surveys_zone_id_fkey" FOREIGN KEY ("zone_id") REFERENCES "public"."land_zones"("id");



ALTER TABLE ONLY "public"."lands"
    ADD CONSTRAINT "lands_subdivision_id_fkey" FOREIGN KEY ("subdivision_id") REFERENCES "public"."subdivisions"("id");



ALTER TABLE ONLY "public"."lands"
    ADD CONSTRAINT "lands_zone_id_fkey" FOREIGN KEY ("zone_id") REFERENCES "public"."land_zones"("id");



ALTER TABLE ONLY "public"."notes"
    ADD CONSTRAINT "notes_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."occupancy_permits"
    ADD CONSTRAINT "occupancy_permits_building_permit_id_fkey" FOREIGN KEY ("building_permit_id") REFERENCES "public"."building_permits"("id");



ALTER TABLE ONLY "public"."occupation_payments"
    ADD CONSTRAINT "occupation_payments_occupation_id_fkey" FOREIGN KEY ("occupation_id") REFERENCES "public"."temporary_occupations"("id");



ALTER TABLE ONLY "public"."other_article_forecasts"
    ADD CONSTRAINT "other_article_forecasts_article_id_fkey" FOREIGN KEY ("article_id") REFERENCES "public"."other_articles"("id");



ALTER TABLE ONLY "public"."other_article_revenues"
    ADD CONSTRAINT "other_article_revenues_article_id_fkey" FOREIGN KEY ("article_id") REFERENCES "public"."other_articles"("id");



ALTER TABLE ONLY "public"."parking_payments"
    ADD CONSTRAINT "parking_payments_permit_id_fkey" FOREIGN KEY ("permit_id") REFERENCES "public"."parking_permits"("id");



ALTER TABLE ONLY "public"."parking_permits"
    ADD CONSTRAINT "parking_permits_vehicle_type_id_fkey" FOREIGN KEY ("vehicle_type_id") REFERENCES "public"."parking_vehicle_types"("id");



ALTER TABLE ONLY "public"."parking_settings"
    ADD CONSTRAINT "parking_settings_vehicle_type_id_fkey" FOREIGN KEY ("vehicle_type_id") REFERENCES "public"."parking_vehicle_types"("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."shop_payment_pauses"
    ADD CONSTRAINT "shop_payment_pauses_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."shop_payment_pauses"
    ADD CONSTRAINT "shop_payment_pauses_shop_id_fkey" FOREIGN KEY ("shop_id") REFERENCES "public"."shops"("id");



ALTER TABLE ONLY "public"."shop_payments"
    ADD CONSTRAINT "shop_payments_shop_id_fkey" FOREIGN KEY ("shop_id") REFERENCES "public"."shops"("id");



ALTER TABLE ONLY "public"."shop_rate_increases"
    ADD CONSTRAINT "shop_rate_increases_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."shops"
    ADD CONSTRAINT "shops_sector_id_fkey" FOREIGN KEY ("sector_id") REFERENCES "public"."sectors"("id");



ALTER TABLE ONLY "public"."souk_payments"
    ADD CONSTRAINT "souk_payments_rental_id_fkey" FOREIGN KEY ("rental_id") REFERENCES "public"."souk_rentals"("id");



ALTER TABLE ONLY "public"."temporary_occupations"
    ADD CONSTRAINT "temporary_occupations_occupation_type_id_fkey" FOREIGN KEY ("occupation_type_id") REFERENCES "public"."occupation_types"("id");



ALTER TABLE ONLY "public"."user_table_preferences"
    ADD CONSTRAINT "user_table_preferences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id");



CREATE POLICY "Enable delete access for authenticated users" ON "public"."beverage_closures" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Enable delete access for authenticated users" ON "public"."beverage_declarations" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Enable delete access for authenticated users" ON "public"."beverage_establishments" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Enable delete access for authenticated users" ON "public"."land_declarations" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Enable delete access for authenticated users" ON "public"."other_article_forecasts" FOR DELETE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable delete access for authenticated users" ON "public"."other_article_revenues" FOR DELETE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable delete access for authenticated users" ON "public"."other_articles" FOR DELETE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable delete access for authenticated users" ON "public"."shop_payment_pauses" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Enable delete access for authenticated users" ON "public"."taxpayers" FOR DELETE TO "authenticated" USING (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."activity_logs" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."beverage_closures" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."beverage_declarations" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."beverage_establishments" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."declaration_numbers" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."land_declarations" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."other_article_forecasts" FOR INSERT WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable insert access for authenticated users" ON "public"."other_article_revenues" FOR INSERT WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable insert access for authenticated users" ON "public"."other_articles" FOR INSERT WITH CHECK (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable insert access for authenticated users" ON "public"."shop_payment_pauses" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."shop_rate_increases" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users" ON "public"."taxpayers" FOR INSERT TO "authenticated" WITH CHECK (true);



CREATE POLICY "Enable insert access for authenticated users with manage_users " ON "public"."notice_templates" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."permissions" && ARRAY['manage_users'::"public"."user_permission"])))));



CREATE POLICY "Enable read access for authenticated users" ON "public"."activity_logs" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."beverage_closures" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."beverage_declarations" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."beverage_establishments" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."declaration_numbers" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."land_declarations" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."notice_templates" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."other_article_forecasts" FOR SELECT USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable read access for authenticated users" ON "public"."other_article_revenues" FOR SELECT USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable read access for authenticated users" ON "public"."other_articles" FOR SELECT USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable read access for authenticated users" ON "public"."shop_payment_pauses" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."shop_rate_increases" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable read access for authenticated users" ON "public"."taxpayers" FOR SELECT TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users" ON "public"."beverage_closures" FOR UPDATE TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users" ON "public"."beverage_declarations" FOR UPDATE TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users" ON "public"."beverage_establishments" FOR UPDATE TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users" ON "public"."declaration_numbers" FOR UPDATE TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users" ON "public"."land_declarations" FOR UPDATE TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users" ON "public"."other_article_forecasts" FOR UPDATE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable update access for authenticated users" ON "public"."other_article_revenues" FOR UPDATE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable update access for authenticated users" ON "public"."other_articles" FOR UPDATE USING (("auth"."role"() = 'authenticated'::"text"));



CREATE POLICY "Enable update access for authenticated users" ON "public"."shop_payment_pauses" FOR UPDATE TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users" ON "public"."taxpayers" FOR UPDATE TO "authenticated" USING (true);



CREATE POLICY "Enable update access for authenticated users with manage_users " ON "public"."notice_templates" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."profiles"
  WHERE (("profiles"."id" = "auth"."uid"()) AND ("profiles"."permissions" && ARRAY['manage_users'::"public"."user_permission"])))));



CREATE POLICY "Users can delete their own notes" ON "public"."notes" FOR DELETE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can insert their own notes" ON "public"."notes" FOR INSERT WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can update their own notes" ON "public"."notes" FOR UPDATE USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can view their own notes" ON "public"."notes" FOR SELECT USING (("auth"."uid"() = "user_id"));



ALTER TABLE "public"."activity_logs" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."beverage_closures" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."beverage_declarations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."beverage_establishments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."declaration_numbers" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."land_declarations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."notes" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."notice_templates" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."other_article_forecasts" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."other_article_revenues" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."other_articles" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."shop_payment_pauses" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."shop_rate_increases" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."taxpayers" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";




















































































































































































GRANT ALL ON FUNCTION "public"."backup_all_tables"() TO "anon";
GRANT ALL ON FUNCTION "public"."backup_all_tables"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."backup_all_tables"() TO "service_role";



GRANT ALL ON FUNCTION "public"."export_database_data"() TO "anon";
GRANT ALL ON FUNCTION "public"."export_database_data"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."export_database_data"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_next_declaration_number"("p_year" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."get_next_declaration_number"("p_year" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_next_declaration_number"("p_year" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."get_next_land_file_number"() TO "anon";
GRANT ALL ON FUNCTION "public"."get_next_land_file_number"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_next_land_file_number"() TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_impound_manager"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_impound_manager"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_impound_manager"() TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric) TO "anon";
GRANT ALL ON FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric) TO "authenticated";
GRANT ALL ON FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric) TO "service_role";



GRANT ALL ON FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric, "increase_date" "date") TO "anon";
GRANT ALL ON FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric, "increase_date" "date") TO "authenticated";
GRANT ALL ON FUNCTION "public"."increase_shop_rates"("rate_multiplier" numeric, "increase_date" "date") TO "service_role";



GRANT ALL ON FUNCTION "public"."increase_shop_rates_for_selected"("shop_ids" "uuid"[], "rate_multiplier" numeric, "increase_date" "date") TO "anon";
GRANT ALL ON FUNCTION "public"."increase_shop_rates_for_selected"("shop_ids" "uuid"[], "rate_multiplier" numeric, "increase_date" "date") TO "authenticated";
GRANT ALL ON FUNCTION "public"."increase_shop_rates_for_selected"("shop_ids" "uuid"[], "rate_multiplier" numeric, "increase_date" "date") TO "service_role";


















GRANT ALL ON TABLE "public"."activity_logs" TO "anon";
GRANT ALL ON TABLE "public"."activity_logs" TO "authenticated";
GRANT ALL ON TABLE "public"."activity_logs" TO "service_role";



GRANT ALL ON TABLE "public"."auction_groups" TO "anon";
GRANT ALL ON TABLE "public"."auction_groups" TO "authenticated";
GRANT ALL ON TABLE "public"."auction_groups" TO "service_role";



GRANT ALL ON TABLE "public"."auction_sales" TO "anon";
GRANT ALL ON TABLE "public"."auction_sales" TO "authenticated";
GRANT ALL ON TABLE "public"."auction_sales" TO "service_role";



GRANT ALL ON TABLE "public"."beverage_closures" TO "anon";
GRANT ALL ON TABLE "public"."beverage_closures" TO "authenticated";
GRANT ALL ON TABLE "public"."beverage_closures" TO "service_role";



GRANT ALL ON TABLE "public"."beverage_declarations" TO "anon";
GRANT ALL ON TABLE "public"."beverage_declarations" TO "authenticated";
GRANT ALL ON TABLE "public"."beverage_declarations" TO "service_role";



GRANT ALL ON TABLE "public"."beverage_establishments" TO "anon";
GRANT ALL ON TABLE "public"."beverage_establishments" TO "authenticated";
GRANT ALL ON TABLE "public"."beverage_establishments" TO "service_role";



GRANT ALL ON TABLE "public"."beverage_payments" TO "anon";
GRANT ALL ON TABLE "public"."beverage_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."beverage_payments" TO "service_role";



GRANT ALL ON TABLE "public"."beverage_settings" TO "anon";
GRANT ALL ON TABLE "public"."beverage_settings" TO "authenticated";
GRANT ALL ON TABLE "public"."beverage_settings" TO "service_role";



GRANT ALL ON TABLE "public"."building_permits" TO "anon";
GRANT ALL ON TABLE "public"."building_permits" TO "authenticated";
GRANT ALL ON TABLE "public"."building_permits" TO "service_role";



GRANT ALL ON SEQUENCE "public"."declaration_number_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."declaration_number_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."declaration_number_seq" TO "service_role";



GRANT ALL ON TABLE "public"."declaration_numbers" TO "anon";
GRANT ALL ON TABLE "public"."declaration_numbers" TO "authenticated";
GRANT ALL ON TABLE "public"."declaration_numbers" TO "service_role";



GRANT ALL ON TABLE "public"."depositors" TO "anon";
GRANT ALL ON TABLE "public"."depositors" TO "authenticated";
GRANT ALL ON TABLE "public"."depositors" TO "service_role";



GRANT ALL ON TABLE "public"."impound_managers" TO "anon";
GRANT ALL ON TABLE "public"."impound_managers" TO "authenticated";
GRANT ALL ON TABLE "public"."impound_managers" TO "service_role";



GRANT ALL ON TABLE "public"."impounded_vehicles" TO "anon";
GRANT ALL ON TABLE "public"."impounded_vehicles" TO "authenticated";
GRANT ALL ON TABLE "public"."impounded_vehicles" TO "service_role";



GRANT ALL ON TABLE "public"."land_declarations" TO "anon";
GRANT ALL ON TABLE "public"."land_declarations" TO "authenticated";
GRANT ALL ON TABLE "public"."land_declarations" TO "service_role";



GRANT ALL ON TABLE "public"."land_payments" TO "anon";
GRANT ALL ON TABLE "public"."land_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."land_payments" TO "service_role";



GRANT ALL ON TABLE "public"."land_surveys" TO "anon";
GRANT ALL ON TABLE "public"."land_surveys" TO "authenticated";
GRANT ALL ON TABLE "public"."land_surveys" TO "service_role";



GRANT ALL ON TABLE "public"."land_zones" TO "anon";
GRANT ALL ON TABLE "public"."land_zones" TO "authenticated";
GRANT ALL ON TABLE "public"."land_zones" TO "service_role";



GRANT ALL ON TABLE "public"."lands" TO "anon";
GRANT ALL ON TABLE "public"."lands" TO "authenticated";
GRANT ALL ON TABLE "public"."lands" TO "service_role";



GRANT ALL ON SEQUENCE "public"."lands_file_number_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."lands_file_number_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."lands_file_number_seq" TO "service_role";



GRANT ALL ON TABLE "public"."notes" TO "anon";
GRANT ALL ON TABLE "public"."notes" TO "authenticated";
GRANT ALL ON TABLE "public"."notes" TO "service_role";



GRANT ALL ON TABLE "public"."notice_templates" TO "anon";
GRANT ALL ON TABLE "public"."notice_templates" TO "authenticated";
GRANT ALL ON TABLE "public"."notice_templates" TO "service_role";



GRANT ALL ON TABLE "public"."occupancy_permits" TO "anon";
GRANT ALL ON TABLE "public"."occupancy_permits" TO "authenticated";
GRANT ALL ON TABLE "public"."occupancy_permits" TO "service_role";



GRANT ALL ON TABLE "public"."occupation_payments" TO "anon";
GRANT ALL ON TABLE "public"."occupation_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."occupation_payments" TO "service_role";



GRANT ALL ON TABLE "public"."occupation_types" TO "anon";
GRANT ALL ON TABLE "public"."occupation_types" TO "authenticated";
GRANT ALL ON TABLE "public"."occupation_types" TO "service_role";



GRANT ALL ON TABLE "public"."other_article_forecasts" TO "anon";
GRANT ALL ON TABLE "public"."other_article_forecasts" TO "authenticated";
GRANT ALL ON TABLE "public"."other_article_forecasts" TO "service_role";



GRANT ALL ON TABLE "public"."other_article_revenues" TO "anon";
GRANT ALL ON TABLE "public"."other_article_revenues" TO "authenticated";
GRANT ALL ON TABLE "public"."other_article_revenues" TO "service_role";



GRANT ALL ON TABLE "public"."other_articles" TO "anon";
GRANT ALL ON TABLE "public"."other_articles" TO "authenticated";
GRANT ALL ON TABLE "public"."other_articles" TO "service_role";



GRANT ALL ON TABLE "public"."parking_payments" TO "anon";
GRANT ALL ON TABLE "public"."parking_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."parking_payments" TO "service_role";



GRANT ALL ON TABLE "public"."parking_permits" TO "anon";
GRANT ALL ON TABLE "public"."parking_permits" TO "authenticated";
GRANT ALL ON TABLE "public"."parking_permits" TO "service_role";



GRANT ALL ON TABLE "public"."parking_settings" TO "anon";
GRANT ALL ON TABLE "public"."parking_settings" TO "authenticated";
GRANT ALL ON TABLE "public"."parking_settings" TO "service_role";



GRANT ALL ON TABLE "public"."parking_vehicle_types" TO "anon";
GRANT ALL ON TABLE "public"."parking_vehicle_types" TO "authenticated";
GRANT ALL ON TABLE "public"."parking_vehicle_types" TO "service_role";



GRANT ALL ON TABLE "public"."profiles" TO "anon";
GRANT ALL ON TABLE "public"."profiles" TO "authenticated";
GRANT ALL ON TABLE "public"."profiles" TO "service_role";



GRANT ALL ON TABLE "public"."sectors" TO "anon";
GRANT ALL ON TABLE "public"."sectors" TO "authenticated";
GRANT ALL ON TABLE "public"."sectors" TO "service_role";



GRANT ALL ON TABLE "public"."shop_payment_pauses" TO "anon";
GRANT ALL ON TABLE "public"."shop_payment_pauses" TO "authenticated";
GRANT ALL ON TABLE "public"."shop_payment_pauses" TO "service_role";



GRANT ALL ON TABLE "public"."shop_payments" TO "anon";
GRANT ALL ON TABLE "public"."shop_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."shop_payments" TO "service_role";



GRANT ALL ON TABLE "public"."shop_rate_increases" TO "anon";
GRANT ALL ON TABLE "public"."shop_rate_increases" TO "authenticated";
GRANT ALL ON TABLE "public"."shop_rate_increases" TO "service_role";



GRANT ALL ON TABLE "public"."shops" TO "anon";
GRANT ALL ON TABLE "public"."shops" TO "authenticated";
GRANT ALL ON TABLE "public"."shops" TO "service_role";



GRANT ALL ON TABLE "public"."souk_payments" TO "anon";
GRANT ALL ON TABLE "public"."souk_payments" TO "authenticated";
GRANT ALL ON TABLE "public"."souk_payments" TO "service_role";



GRANT ALL ON TABLE "public"."souk_rentals" TO "anon";
GRANT ALL ON TABLE "public"."souk_rentals" TO "authenticated";
GRANT ALL ON TABLE "public"."souk_rentals" TO "service_role";



GRANT ALL ON TABLE "public"."subdivisions" TO "anon";
GRANT ALL ON TABLE "public"."subdivisions" TO "authenticated";
GRANT ALL ON TABLE "public"."subdivisions" TO "service_role";



GRANT ALL ON TABLE "public"."taxpayers" TO "anon";
GRANT ALL ON TABLE "public"."taxpayers" TO "authenticated";
GRANT ALL ON TABLE "public"."taxpayers" TO "service_role";



GRANT ALL ON TABLE "public"."temporary_occupations" TO "anon";
GRANT ALL ON TABLE "public"."temporary_occupations" TO "authenticated";
GRANT ALL ON TABLE "public"."temporary_occupations" TO "service_role";



GRANT ALL ON TABLE "public"."user_table_preferences" TO "anon";
GRANT ALL ON TABLE "public"."user_table_preferences" TO "authenticated";
GRANT ALL ON TABLE "public"."user_table_preferences" TO "service_role";



GRANT ALL ON TABLE "public"."vehicle_types" TO "anon";
GRANT ALL ON TABLE "public"."vehicle_types" TO "authenticated";
GRANT ALL ON TABLE "public"."vehicle_types" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
