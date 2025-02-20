SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.8

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	ab96ad75-d1f5-41e4-b720-a1ac232f2574	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"yomix90@gmail.com","user_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","user_phone":""}}	2024-11-30 19:21:45.842454+00	
00000000-0000-0000-0000-000000000000	e5703121-b0f6-47aa-aa65-086540216b6d	{"action":"user_repeated_signup","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-12-02 00:19:41.072707+00	
00000000-0000-0000-0000-000000000000	68adc86b-cf7f-41c1-b3c6-33bf53aecea4	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-02 00:21:39.329215+00	
00000000-0000-0000-0000-000000000000	ec04fd2a-37c1-4d32-a22f-9d91805df275	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-02 00:28:41.365868+00	
00000000-0000-0000-0000-000000000000	8e471e86-e248-4198-84b4-7f3e88adddcf	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-02 12:21:07.152353+00	
00000000-0000-0000-0000-000000000000	07c9f67e-c3d0-4142-b44e-58e2c6ab21a5	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-02 14:38:11.424378+00	
00000000-0000-0000-0000-000000000000	49133d70-5c67-4701-912f-393d36e011b9	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-02 14:44:44.094505+00	
00000000-0000-0000-0000-000000000000	2c682335-71cc-4e2f-b494-430bd6e62d2b	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-02 23:35:04.489869+00	
00000000-0000-0000-0000-000000000000	8b4a6ec6-4e76-4266-90fd-78568a4ec314	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-02 23:35:04.492378+00	
00000000-0000-0000-0000-000000000000	f42566a2-af8e-44ba-b8cf-69ef55dfd806	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-02 23:35:11.103426+00	
00000000-0000-0000-0000-000000000000	d620e199-7b08-44ff-81a8-b11bf0a931dc	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-02 23:35:36.293402+00	
00000000-0000-0000-0000-000000000000	232b86fe-0c0a-4417-b3aa-c6678dc55c59	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-04 09:04:12.512362+00	
00000000-0000-0000-0000-000000000000	878c8e08-3ceb-49ad-b66d-1e0893b58126	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 12:28:21.158534+00	
00000000-0000-0000-0000-000000000000	fb307d9f-bf4d-444d-8f80-b72fb71ccfd8	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 12:28:21.160381+00	
00000000-0000-0000-0000-000000000000	5b1ff489-a7f7-49d9-a7ab-431e7f43a99b	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 13:39:09.718838+00	
00000000-0000-0000-0000-000000000000	7a80e9bf-b263-4bca-8a6b-cc3cc29f2b44	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 13:39:09.720577+00	
00000000-0000-0000-0000-000000000000	6cc16eb3-d3b3-4064-bee2-4a824cbaeb00	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 13:54:01.395169+00	
00000000-0000-0000-0000-000000000000	57951faf-8933-484c-acf2-328378248e3a	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 13:54:01.397547+00	
00000000-0000-0000-0000-000000000000	6932f931-a5a2-46ac-8a08-9521bd4bd34e	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 13:56:19.936851+00	
00000000-0000-0000-0000-000000000000	8b9c840b-74d3-466b-9bc1-48e490fae4e8	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 13:56:19.938942+00	
00000000-0000-0000-0000-000000000000	e1cfd212-b5e8-4bd8-a430-beeaa88172b4	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 22:41:44.321248+00	
00000000-0000-0000-0000-000000000000	5edee9d0-7d11-428d-8ce1-58afa227e1b2	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 22:41:44.331435+00	
00000000-0000-0000-0000-000000000000	c169198d-d803-4229-9962-653f88e55178	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 22:51:07.517713+00	
00000000-0000-0000-0000-000000000000	7a1b1778-03b7-4a58-b855-2e7ca12d83d7	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-04 22:51:07.519652+00	
00000000-0000-0000-0000-000000000000	77f854bb-107f-45dd-ac29-500ea200a7fe	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 09:25:31.320163+00	
00000000-0000-0000-0000-000000000000	da3c1dcb-306e-409d-974c-8f8890b89f01	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 09:25:31.336828+00	
00000000-0000-0000-0000-000000000000	5409c566-2462-437a-840f-6e00303c2326	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 15:23:03.769828+00	
00000000-0000-0000-0000-000000000000	d8729a48-b74b-4551-8084-8940201bf09b	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 15:23:03.771913+00	
00000000-0000-0000-0000-000000000000	6c489786-d047-4808-9922-0b009005a3f0	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 15:26:42.895855+00	
00000000-0000-0000-0000-000000000000	55c13b37-371b-4249-a614-7c487124d18a	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 15:26:42.897367+00	
00000000-0000-0000-0000-000000000000	f5c7b952-104c-481c-a184-1cdbb7a2e83a	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 21:53:02.896629+00	
00000000-0000-0000-0000-000000000000	500a8bfb-e8b1-4faa-b4b4-4f879a26baf5	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 21:53:02.905008+00	
00000000-0000-0000-0000-000000000000	e8b4c423-556f-4550-a463-aa394f9f8741	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 21:58:07.763845+00	
00000000-0000-0000-0000-000000000000	826e9319-f4fe-4796-a8ab-64174c562f97	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 21:58:07.76546+00	
00000000-0000-0000-0000-000000000000	ae6092f8-ec1c-4829-af16-79fb3f37ad95	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 22:05:08.178973+00	
00000000-0000-0000-0000-000000000000	d1f29f05-a271-4e21-8e14-f4c20cb07fec	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-05 22:05:08.181962+00	
00000000-0000-0000-0000-000000000000	76068aa3-fc92-4b87-9265-f4c23d173c6e	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-06 20:38:25.855896+00	
00000000-0000-0000-0000-000000000000	e85aedcc-561e-40eb-9309-f5c9d86a6891	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-06 20:38:25.869601+00	
00000000-0000-0000-0000-000000000000	48b0f6ae-5f38-4ae5-a4ed-a4b51c4323a8	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-06 20:40:38.17135+00	
00000000-0000-0000-0000-000000000000	9bd2f9ae-ac8c-49c2-ba5b-2e273a4280e2	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-06 20:40:38.173453+00	
00000000-0000-0000-0000-000000000000	1df6e87b-d72e-4986-9a17-16d2928ff543	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-06 20:59:29.619122+00	
00000000-0000-0000-0000-000000000000	b067be02-42f9-4859-aa33-2b9d30d4b1d1	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-06 21:04:25.50593+00	
00000000-0000-0000-0000-000000000000	81053119-5413-48cb-80e2-4c9d352e837f	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-06 21:04:25.50743+00	
00000000-0000-0000-0000-000000000000	56192237-83f6-4b02-a8a3-9fce62370c47	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 15:28:33.65502+00	
00000000-0000-0000-0000-000000000000	851bf21f-8068-495d-9b98-36bd3b296601	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 15:28:33.675148+00	
00000000-0000-0000-0000-000000000000	5e18b6f0-8d9e-40b2-a073-5399c5ba1873	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 15:40:24.372091+00	
00000000-0000-0000-0000-000000000000	0074fd40-7fd4-46d3-8506-a8a3461778c1	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 15:40:24.37368+00	
00000000-0000-0000-0000-000000000000	e016ecc1-8470-40a4-aae1-a62b13de3e2d	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 15:40:54.369746+00	
00000000-0000-0000-0000-000000000000	56d64e52-9467-47e6-a42c-9ea78fc14ad1	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 15:40:54.372268+00	
00000000-0000-0000-0000-000000000000	5051a659-b7f5-40ac-8e62-4355efdd4dd9	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 17:56:16.853919+00	
00000000-0000-0000-0000-000000000000	426f7df3-1dee-4b8b-b3e0-6c5a24d58414	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-07 17:56:16.856221+00	
00000000-0000-0000-0000-000000000000	c2f0a240-f083-4021-b3af-9e94e2e1713c	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 19:44:58.749674+00	
00000000-0000-0000-0000-000000000000	b4289eab-5394-442e-80f7-c6d4beac554a	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 19:44:58.762939+00	
00000000-0000-0000-0000-000000000000	aff5057c-84a1-4276-a7a7-cbd76621f7cf	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 19:51:51.153756+00	
00000000-0000-0000-0000-000000000000	4ff843ea-3eae-4f53-87d1-179f420e7fd0	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 19:51:51.155884+00	
00000000-0000-0000-0000-000000000000	803ee114-3257-46e6-8fcf-390806ae8bff	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 20:43:45.926616+00	
00000000-0000-0000-0000-000000000000	3cce294a-93d8-45b0-adda-7eda5ba096cc	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 20:43:45.928195+00	
00000000-0000-0000-0000-000000000000	f4d303ec-d10c-48a6-89fe-f8d92b518347	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 20:57:13.099291+00	
00000000-0000-0000-0000-000000000000	cf7c2388-ecf9-4fff-9027-ddaf20116534	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 20:57:13.100834+00	
00000000-0000-0000-0000-000000000000	33997520-7252-4bcc-b3b0-d952dfafd91e	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 21:44:35.445371+00	
00000000-0000-0000-0000-000000000000	c830b549-3af9-490c-a03a-3986d0d491ea	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 21:44:35.448808+00	
00000000-0000-0000-0000-000000000000	48adad57-e4da-4dd4-a903-dd4b18c0d43d	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 21:44:37.230891+00	
00000000-0000-0000-0000-000000000000	65dfc361-6f17-4156-a1b0-1091e2936d5f	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 22:03:46.836519+00	
00000000-0000-0000-0000-000000000000	96f5ac98-a942-419a-8f9b-1e4285fd7f7e	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-08 22:03:46.838886+00	
00000000-0000-0000-0000-000000000000	dde415eb-b811-4262-ac6e-1b952ace5d14	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 17:36:49.450667+00	
00000000-0000-0000-0000-000000000000	144bad1a-1b16-41a7-be99-75fe23db63c5	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 17:36:49.480748+00	
00000000-0000-0000-0000-000000000000	57665e84-d64b-4432-916a-a8661b26a092	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 17:55:03.820981+00	
00000000-0000-0000-0000-000000000000	3b933a10-57bb-46d5-a695-2255442570f4	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 17:55:03.825477+00	
00000000-0000-0000-0000-000000000000	82b3d74d-eb7f-4815-9a70-a7611b2fb2a4	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 18:09:40.634828+00	
00000000-0000-0000-0000-000000000000	35e9f30a-0c5e-424f-837c-9edea740c713	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 18:09:40.636342+00	
00000000-0000-0000-0000-000000000000	265722ac-b5e6-4330-9b39-8656484ce951	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 21:42:39.675902+00	
00000000-0000-0000-0000-000000000000	1cfccca8-e7c8-4adb-9198-e3dbb36b3884	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-10 21:42:39.676976+00	
00000000-0000-0000-0000-000000000000	d9240cc6-9d44-4bbf-8c2a-c9e163ecfb25	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 13:36:00.399379+00	
00000000-0000-0000-0000-000000000000	4267bf7b-42f5-4107-8d0c-d9d1ef0c77d7	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 13:36:00.416164+00	
00000000-0000-0000-0000-000000000000	c6b7911d-438f-489d-ad0a-f1bcd05de694	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 20:00:11.216029+00	
00000000-0000-0000-0000-000000000000	25597fd8-74eb-4cdf-9c44-6260a2b69628	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 20:00:11.223589+00	
00000000-0000-0000-0000-000000000000	a7ef4b8a-e4da-4011-8815-7730ff542604	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 20:03:51.583761+00	
00000000-0000-0000-0000-000000000000	3909393b-ad3b-4c6a-a4c0-35922c31e9a5	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 20:03:51.58526+00	
00000000-0000-0000-0000-000000000000	5a63679d-c332-4b34-b35f-1ac558cdc693	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 20:18:14.729633+00	
00000000-0000-0000-0000-000000000000	f08f3969-4d15-4889-b696-bf3926ed5033	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-11 20:18:14.73163+00	
00000000-0000-0000-0000-000000000000	8cc11fde-82b8-4f25-aaee-0cbac5c835af	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-12 20:09:01.317416+00	
00000000-0000-0000-0000-000000000000	07ea4dd8-79fd-43a2-9b0e-dd1fb6aad5a8	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-12 20:09:01.331757+00	
00000000-0000-0000-0000-000000000000	5766bff0-447d-4767-ade0-9b9891609f73	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-12 20:09:45.386657+00	
00000000-0000-0000-0000-000000000000	355809ac-a83a-457b-ba8f-619349dd0c4b	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-12 20:09:45.387362+00	
00000000-0000-0000-0000-000000000000	ce687f38-0504-4524-932c-5b7c62e38331	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-12 20:24:58.825234+00	
00000000-0000-0000-0000-000000000000	092ed637-2887-44b3-8b3a-387535e70f5d	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-12 20:32:37.278696+00	
00000000-0000-0000-0000-000000000000	d9031aed-4b55-4e61-993f-8ea0a022875f	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-12 20:35:08.320257+00	
00000000-0000-0000-0000-000000000000	a49ae799-f011-479c-b1a2-0f587b9f7e9a	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-12 20:36:56.429841+00	
00000000-0000-0000-0000-000000000000	d4cbaf58-3794-44f5-a405-abfa42f67fd9	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 08:17:59.740816+00	
00000000-0000-0000-0000-000000000000	b45a5691-0c86-4394-9a7a-34e26f6f144a	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 08:30:52.449238+00	
00000000-0000-0000-0000-000000000000	f47d9e4a-d8e0-4217-9e98-a9854c79e89c	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 08:32:55.840458+00	
00000000-0000-0000-0000-000000000000	3acb2310-badd-4112-a26b-f9fac2b1cfb6	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 08:41:35.555946+00	
00000000-0000-0000-0000-000000000000	4296a4f8-1ca5-47a7-949a-91b6f2ff9020	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 08:44:53.454341+00	
00000000-0000-0000-0000-000000000000	cbe927c8-af4d-458b-b57b-dee86b4e9255	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 08:48:12.92343+00	
00000000-0000-0000-0000-000000000000	2aea2d7b-8c48-42b5-b97b-0f036e91b73e	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 09:12:58.558397+00	
00000000-0000-0000-0000-000000000000	8655ccc5-a904-43f7-9ec4-c718104842c4	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 09:15:58.961176+00	
00000000-0000-0000-0000-000000000000	b02ad58e-0283-49d5-8c65-dfbd45e70d70	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 09:20:01.75227+00	
00000000-0000-0000-0000-000000000000	2e342020-7357-4695-9ea8-b35178d09b4d	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 09:22:00.988528+00	
00000000-0000-0000-0000-000000000000	f6ed3a4f-0b19-41cb-ac51-08a8cffb7c11	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 09:57:32.86117+00	
00000000-0000-0000-0000-000000000000	d52a5308-93d9-4483-948e-ad5b623ae985	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 18:57:28.748889+00	
00000000-0000-0000-0000-000000000000	a6997d81-7cc8-4e02-8bb7-e60049e2d10d	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-13 18:59:43.87735+00	
00000000-0000-0000-0000-000000000000	f7b37a49-a204-4d1c-b27a-d07c8b404ebe	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-13 18:59:54.090318+00	
00000000-0000-0000-0000-000000000000	a89ed09b-b8f9-4f4a-af75-d3212d1be040	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-14 15:58:16.039686+00	
00000000-0000-0000-0000-000000000000	5da4b9dc-dc31-4cf6-b7b9-ea40cc38d47c	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-14 17:14:57.894471+00	
00000000-0000-0000-0000-000000000000	974e8a04-17ad-4b9e-a11a-b924615b6e84	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-14 17:34:24.793533+00	
00000000-0000-0000-0000-000000000000	bbf09eae-a2ad-4aaa-91c0-a19578e63cda	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-14 17:36:51.365413+00	
00000000-0000-0000-0000-000000000000	1d01137c-1971-4c98-bf72-1854942c50ea	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-14 17:37:32.406077+00	
00000000-0000-0000-0000-000000000000	a2649adf-ab22-49db-a4ea-a582e701fdc1	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-14 18:34:04.781001+00	
00000000-0000-0000-0000-000000000000	97a26d4f-fddb-47bb-ab86-310f762b6a77	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-14 18:34:04.782604+00	
00000000-0000-0000-0000-000000000000	9208d91d-ba05-454a-90a4-fed065bd6c59	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-14 18:36:53.949834+00	
00000000-0000-0000-0000-000000000000	235b90f9-a650-4d97-a6cd-3cf25b1018e8	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-14 18:36:53.951469+00	
00000000-0000-0000-0000-000000000000	ba82c5df-53ac-4a7a-b778-4b6e62d47472	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-14 19:05:49.759931+00	
00000000-0000-0000-0000-000000000000	a98ee36e-53b2-48c5-a78f-5bf38daa1cd0	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-14 19:15:52.356843+00	
00000000-0000-0000-0000-000000000000	c25c5e76-75cc-44ba-8686-8e282166cf90	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 14:02:29.502514+00	
00000000-0000-0000-0000-000000000000	015bd83a-9133-4f68-b92f-184cf7417e71	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 14:02:29.513135+00	
00000000-0000-0000-0000-000000000000	82537749-07f3-44f7-9d59-ec79ded63806	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 14:03:46.281374+00	
00000000-0000-0000-0000-000000000000	d8bb6d8b-8c45-48ad-b0dd-923b56260255	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 14:03:46.286543+00	
00000000-0000-0000-0000-000000000000	b8f02e96-fb85-468b-a36e-89065cf0586c	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 14:20:42.398612+00	
00000000-0000-0000-0000-000000000000	3e73a9a1-2368-4ec8-9281-15e1db5d13ba	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 14:20:42.401566+00	
00000000-0000-0000-0000-000000000000	c94c54f1-9204-4a89-aee6-ad93cc4d7b69	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 15:41:29.110898+00	
00000000-0000-0000-0000-000000000000	224b5461-78c5-478d-8c35-9d41d3d9a53d	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 15:41:29.113434+00	
00000000-0000-0000-0000-000000000000	c57346b6-9136-4bc7-9aba-db4229f2ba2a	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 15:41:34.711566+00	
00000000-0000-0000-0000-000000000000	af1b0e95-37a6-4c0e-9905-56a01cb23520	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 15:49:05.510791+00	
00000000-0000-0000-0000-000000000000	ec0ef141-a13a-400c-b91a-a8ca54dac578	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 15:49:05.513937+00	
00000000-0000-0000-0000-000000000000	488b2f56-4659-4f43-b318-c01acba81486	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 16:35:01.590551+00	
00000000-0000-0000-0000-000000000000	d5ccb8f2-1537-41b3-9ea9-830ebcf2c324	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 16:35:01.593518+00	
00000000-0000-0000-0000-000000000000	5629a229-e1f3-4cfa-9381-38b6cb8c8c39	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 17:40:43.608491+00	
00000000-0000-0000-0000-000000000000	1ee77fad-e819-40cb-9600-b3410f8b3d61	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 17:40:43.609432+00	
00000000-0000-0000-0000-000000000000	fca1ed08-d828-47f3-9fe8-f6f62d0ea8dd	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 17:46:43.416256+00	
00000000-0000-0000-0000-000000000000	8e26cb9d-8910-48d4-9feb-b13530a533c2	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 17:46:43.419268+00	
00000000-0000-0000-0000-000000000000	82edc152-07d5-489f-84e4-f9eff780a45d	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 18:57:50.732912+00	
00000000-0000-0000-0000-000000000000	8f8a4578-9e01-4a74-ae9a-fbfef0b2ce4a	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 18:57:50.735379+00	
00000000-0000-0000-0000-000000000000	e2714eb6-f209-473a-a6eb-a525af4ad1d4	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 18:58:48.532922+00	
00000000-0000-0000-0000-000000000000	5f2b87ec-4b63-4ad3-9102-ecd30b69ed3e	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 18:58:48.535051+00	
00000000-0000-0000-0000-000000000000	f8dfc0e0-c78f-4dc0-bd30-700ec74cb8af	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 19:15:42.409467+00	
00000000-0000-0000-0000-000000000000	ada50b69-ae36-4662-a401-05790275f576	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-15 19:15:42.411211+00	
00000000-0000-0000-0000-000000000000	dae3a75d-a28c-44df-8b6b-480b08e7e3ae	{"action":"user_signedup","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2024-12-15 19:21:08.047283+00	
00000000-0000-0000-0000-000000000000	09ca0f71-981a-411f-81e3-5b3ed362ae27	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-15 19:21:08.052775+00	
00000000-0000-0000-0000-000000000000	d58be647-b634-485b-8765-b5a3a5d1d7cf	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-15 19:21:46.367528+00	
00000000-0000-0000-0000-000000000000	334df939-5490-429c-8dad-a1dd5e716954	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-15 19:22:03.973335+00	
00000000-0000-0000-0000-000000000000	a832f74b-b5a0-436a-b334-d0ec83586c60	{"action":"user_repeated_signup","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-12-15 19:27:54.540558+00	
00000000-0000-0000-0000-000000000000	9edb3f42-a295-4bbd-a0aa-5e0ebf91be34	{"action":"user_signedup","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2024-12-15 19:28:04.70685+00	
00000000-0000-0000-0000-000000000000	8ca7adee-7b8c-4aa9-904b-27499f798281	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-15 19:28:04.709765+00	
00000000-0000-0000-0000-000000000000	4d86f8db-7666-49ec-b58f-9b35d9f7aec0	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-15 19:28:11.84954+00	
00000000-0000-0000-0000-000000000000	a5aedca2-28c7-49ac-a7e8-527d7c0c5074	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-15 19:28:25.284008+00	
00000000-0000-0000-0000-000000000000	93209d4d-3d72-4dd4-9631-3439b9194be8	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-15 19:37:10.421819+00	
00000000-0000-0000-0000-000000000000	545d7e74-9969-4fd0-9ea2-f8c385293112	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-15 19:37:15.523067+00	
00000000-0000-0000-0000-000000000000	c8da58b0-18f7-43d3-87f0-b0aca6e633f1	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-15 19:37:19.835104+00	
00000000-0000-0000-0000-000000000000	76e39df8-8fd4-41b3-90ae-97e0859da052	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-15 19:37:23.365479+00	
00000000-0000-0000-0000-000000000000	d9c39cd8-4357-4d91-ba30-199e5362c917	{"action":"token_refreshed","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 00:01:19.02262+00	
00000000-0000-0000-0000-000000000000	d7c2aa8e-55eb-452f-8c5d-fb46bcbdfc9e	{"action":"token_revoked","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 00:01:19.025164+00	
00000000-0000-0000-0000-000000000000	f923fafe-06c1-423c-9e37-e3fa46c12f6a	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-16 00:20:27.174119+00	
00000000-0000-0000-0000-000000000000	6a7095e6-4418-4dbe-8ebd-0ea0a60b5c63	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 00:20:30.875314+00	
00000000-0000-0000-0000-000000000000	c4728f93-6e60-4578-ae8c-d74786819516	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-16 00:21:05.655987+00	
00000000-0000-0000-0000-000000000000	fe8dec56-bc3a-428c-bfb1-3d44cc1190e2	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 00:21:46.716838+00	
00000000-0000-0000-0000-000000000000	f0b60f11-974c-4514-85cb-c784f9a869da	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 00:28:57.576363+00	
00000000-0000-0000-0000-000000000000	6b4f7a89-741a-4c26-9cf6-b42710a45653	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 00:29:24.058139+00	
00000000-0000-0000-0000-000000000000	81461762-725e-4cbc-b8a9-109651e5c767	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-16 00:29:32.382144+00	
00000000-0000-0000-0000-000000000000	4e8337af-fed9-4889-aa24-bb141971f87b	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 00:29:37.670352+00	
00000000-0000-0000-0000-000000000000	b187c0aa-22ff-4856-9de5-e98ed3640663	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-16 00:29:42.15861+00	
00000000-0000-0000-0000-000000000000	d7eed14f-efd2-41bb-9928-dc2369e192d6	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 00:29:46.79814+00	
00000000-0000-0000-0000-000000000000	71ec844e-25b3-42a3-a0ac-20b567643bc2	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-16 00:45:02.985285+00	
00000000-0000-0000-0000-000000000000	bfb9a1d9-2d75-4521-9291-7ba347e432e0	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 00:45:08.690007+00	
00000000-0000-0000-0000-000000000000	a6ca36d0-6538-4cea-bbfa-414f2924c46c	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 01:04:43.439644+00	
00000000-0000-0000-0000-000000000000	ac0b91a7-a807-4190-8b51-f958b93c9954	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-16 01:04:51.955463+00	
00000000-0000-0000-0000-000000000000	7ae4fba4-e224-487a-8ba8-223b691cf348	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 01:05:03.059905+00	
00000000-0000-0000-0000-000000000000	dad38ce8-9263-42c1-a16f-d883f20b45e9	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 01:33:16.623692+00	
00000000-0000-0000-0000-000000000000	01893728-5cef-4f6e-9a81-bc207b00654c	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 01:33:16.625325+00	
00000000-0000-0000-0000-000000000000	7075b1c1-d2cb-4d87-8d06-90101f145c88	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 15:10:56.079421+00	
00000000-0000-0000-0000-000000000000	56307e8c-af6b-4537-a9cc-267da34a37f5	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 15:10:56.092824+00	
00000000-0000-0000-0000-000000000000	a44c1cea-845d-462e-8908-a6c26be22e65	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:07:15.17837+00	
00000000-0000-0000-0000-000000000000	1a8b2060-4a76-49e7-a0f5-6e11b8fc7177	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:07:15.180526+00	
00000000-0000-0000-0000-000000000000	9ce97960-2841-46fd-86c5-8a70dee74512	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:19:39.195822+00	
00000000-0000-0000-0000-000000000000	096b9856-97d3-4f02-b382-c925a82b4776	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:19:39.198486+00	
00000000-0000-0000-0000-000000000000	8a31a694-f680-434d-b81f-ea7f4c52ef52	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:22:03.575175+00	
00000000-0000-0000-0000-000000000000	a5117a20-4ff7-49e1-b6c8-88032f97d0ca	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:22:03.577492+00	
00000000-0000-0000-0000-000000000000	30073dfd-d772-4099-b10a-4cbbd3c80ffb	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:27:44.661234+00	
00000000-0000-0000-0000-000000000000	0cfba2c8-136e-4cdf-a409-9114ec769286	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 16:27:44.662677+00	
00000000-0000-0000-0000-000000000000	c7aedfd0-d4c3-4b95-b854-5edab3bd990a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 23:37:11.550341+00	
00000000-0000-0000-0000-000000000000	d363aaf4-b94c-43f6-a8db-baec67d4d8ca	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 23:37:11.552152+00	
00000000-0000-0000-0000-000000000000	6c145420-0b32-4347-83e4-a9594da3e800	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 23:46:12.813793+00	
00000000-0000-0000-0000-000000000000	944bb8d2-69e7-45e2-9fc0-9a552e6cea68	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 23:46:12.821166+00	
00000000-0000-0000-0000-000000000000	3b50352b-0fa8-42af-89de-367237c7fdf6	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 23:51:28.416416+00	
00000000-0000-0000-0000-000000000000	28f558b4-7de0-4876-a9d5-133512f3d4e4	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-16 23:51:28.418529+00	
00000000-0000-0000-0000-000000000000	1b631542-e1ff-41ef-89c3-0e2567e95dac	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-16 23:59:19.058979+00	
00000000-0000-0000-0000-000000000000	18589bdf-c0ca-4d25-963d-d8fbafcc2331	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 00:00:14.044248+00	
00000000-0000-0000-0000-000000000000	2445c19f-5399-4385-980a-a44127e29a00	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 00:01:46.175248+00	
00000000-0000-0000-0000-000000000000	1d3568ad-2dd7-458b-8329-08f382bc5497	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 00:03:07.09839+00	
00000000-0000-0000-0000-000000000000	6e75537e-b45e-4afd-9a3d-fff83e655cb6	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 00:03:14.894056+00	
00000000-0000-0000-0000-000000000000	203e5621-c609-4174-b0e1-6a35e32ec2d7	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 00:03:18.559072+00	
00000000-0000-0000-0000-000000000000	0bd9f08c-1b2d-4910-99ee-68910529a085	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 00:03:39.566141+00	
00000000-0000-0000-0000-000000000000	1e89c68b-9708-415b-a9cf-d3535e25e8c7	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 00:11:13.842923+00	
00000000-0000-0000-0000-000000000000	691f3c0c-6704-4c32-8a69-bedca1661c16	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 00:27:50.292655+00	
00000000-0000-0000-0000-000000000000	0ba202bf-28b8-4802-a11a-577c81a6c441	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 02:29:43.357499+00	
00000000-0000-0000-0000-000000000000	db8e1dd5-a39f-4153-b6a9-643227f1fa4c	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 13:15:12.313323+00	
00000000-0000-0000-0000-000000000000	aba2ccc6-b739-4952-8fd9-35a98ec62b43	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 13:27:46.003207+00	
00000000-0000-0000-0000-000000000000	513fd322-b751-47a2-b5f6-28ab9d1803e1	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-17 13:35:12.081989+00	
00000000-0000-0000-0000-000000000000	3b502349-0edc-4d65-9edd-32a21794504d	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-17 13:35:12.087067+00	
00000000-0000-0000-0000-000000000000	e070fe4e-6047-4ac3-b962-943482b0739b	{"action":"user_signedup","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2024-12-17 13:36:51.051239+00	
00000000-0000-0000-0000-000000000000	b73b5e6f-c8d5-4c95-87ac-07834a2693c1	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 13:36:51.05928+00	
00000000-0000-0000-0000-000000000000	e96880e9-4c11-4704-bb5c-b3393c11a8b6	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 13:37:59.378331+00	
00000000-0000-0000-0000-000000000000	68caf17e-976f-4d86-8ee3-395ec5f6cfe7	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 13:38:13.491541+00	
00000000-0000-0000-0000-000000000000	0003f1e7-ed30-463d-bdbc-fb36b3f24632	{"action":"token_refreshed","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-17 14:37:21.99957+00	
00000000-0000-0000-0000-000000000000	60476996-782f-4351-a8a7-8e9c39986472	{"action":"token_revoked","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-17 14:37:22.00452+00	
00000000-0000-0000-0000-000000000000	edb8655f-5992-4a54-bd99-7af18da8603c	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:41:01.957044+00	
00000000-0000-0000-0000-000000000000	13f7b57e-5bf4-4ea3-ad3a-1c0ca9cd571e	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:41:11.010731+00	
00000000-0000-0000-0000-000000000000	9b465479-60c3-4bf2-be9a-e294816648d4	{"action":"user_signedup","actor_id":"cc6f7bef-5ca2-4744-b976-94c5851c1ac1","actor_username":"test@fourriere.ma","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2024-12-17 14:43:16.514245+00	
00000000-0000-0000-0000-000000000000	c87dfef2-1162-4e6b-a36f-fc73f6190051	{"action":"login","actor_id":"cc6f7bef-5ca2-4744-b976-94c5851c1ac1","actor_username":"test@fourriere.ma","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:43:16.517416+00	
00000000-0000-0000-0000-000000000000	27d17562-e507-4528-ba95-ebf5e1d5f272	{"action":"login","actor_id":"cc6f7bef-5ca2-4744-b976-94c5851c1ac1","actor_username":"test@fourriere.ma","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:43:54.767689+00	
00000000-0000-0000-0000-000000000000	5f29656d-749e-4cb8-8985-7c1b6df54419	{"action":"login","actor_id":"cc6f7bef-5ca2-4744-b976-94c5851c1ac1","actor_username":"test@fourriere.ma","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:43:57.701824+00	
00000000-0000-0000-0000-000000000000	2e1a270c-bf15-4f98-8833-306649ae5a6b	{"action":"user_repeated_signup","actor_id":"cc6f7bef-5ca2-4744-b976-94c5851c1ac1","actor_username":"test@fourriere.ma","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2024-12-17 14:44:17.884585+00	
00000000-0000-0000-0000-000000000000	35e646a4-8165-487b-a580-359caac0e4f9	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-17 14:45:11.374884+00	
00000000-0000-0000-0000-000000000000	3d8edd52-4ade-4970-8d46-d294f8823944	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-17 14:45:11.375628+00	
00000000-0000-0000-0000-000000000000	c1e745ee-2536-4137-b910-ee9c103cc31e	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 14:45:15.149998+00	
00000000-0000-0000-0000-000000000000	8fea143c-3e59-489f-af11-43f431d53583	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:45:51.723808+00	
00000000-0000-0000-0000-000000000000	456ad024-a02a-4b35-8676-fe20eac07479	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:46:01.811879+00	
00000000-0000-0000-0000-000000000000	d9523b32-a137-4c13-b386-44ac8074afb6	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:46:21.894786+00	
00000000-0000-0000-0000-000000000000	188c7ffb-360f-4c3a-87c6-19c55ef28766	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:46:23.782741+00	
00000000-0000-0000-0000-000000000000	a051ecdf-3e3d-454c-952d-3bfdbcc9a4ba	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:46:37.085992+00	
00000000-0000-0000-0000-000000000000	af6b19a3-1033-454e-9b09-aac65598e8ab	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:46:38.330414+00	
00000000-0000-0000-0000-000000000000	ab7fd08a-a2f7-4a54-98c9-d3f715f74291	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:46:45.535232+00	
00000000-0000-0000-0000-000000000000	553c1d08-1e2c-4bda-b5a0-a7ef20c4bc7b	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:47:04.576615+00	
00000000-0000-0000-0000-000000000000	4d56b72c-86c8-4c66-9985-8370b53cbeab	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:47:16.474934+00	
00000000-0000-0000-0000-000000000000	8bd8a8e5-8c28-40ae-8a97-03baa10cdbc9	{"action":"logout","actor_id":"cc6f7bef-5ca2-4744-b976-94c5851c1ac1","actor_username":"test@fourriere.ma","actor_via_sso":false,"log_type":"account"}	2024-12-17 14:54:02.614442+00	
00000000-0000-0000-0000-000000000000	65be9809-c048-4063-862d-fe43a95a4e79	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:54:09.615834+00	
00000000-0000-0000-0000-000000000000	48982e0f-3ab3-4bb1-a35d-b9336f83c471	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 14:54:09.843715+00	
00000000-0000-0000-0000-000000000000	bbda1347-32d2-4f28-8766-3222c944a5e5	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:56:35.372969+00	
00000000-0000-0000-0000-000000000000	83d345fe-e03b-45e0-a5a3-f7c5515d69d3	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 14:56:35.658805+00	
00000000-0000-0000-0000-000000000000	1c0926ec-e69a-4100-ae3f-986617311c18	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:56:46.012875+00	
00000000-0000-0000-0000-000000000000	1c0d31bc-abc1-47f2-9b1f-2fdb3adb6309	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 14:56:46.214358+00	
00000000-0000-0000-0000-000000000000	6663e775-98f8-4551-9448-3421c7a6e323	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 14:59:12.952385+00	
00000000-0000-0000-0000-000000000000	231d57a0-a183-426f-8576-13796a393342	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:00:45.238032+00	
00000000-0000-0000-0000-000000000000	8291b049-6426-4db6-a86b-beaef74376a6	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:00:46.400608+00	
00000000-0000-0000-0000-000000000000	66bdcad4-a679-45ae-a458-33e4230e3352	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:01:06.079557+00	
00000000-0000-0000-0000-000000000000	b77eb9e3-42b0-4392-82ec-2f469a57559f	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:03:07.529947+00	
00000000-0000-0000-0000-000000000000	9144ff45-6861-48f8-9c0d-abcb2398cfcd	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:03:57.910765+00	
00000000-0000-0000-0000-000000000000	a7cc2601-dd30-4ac4-b68b-a0037478ae74	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:03:58.839869+00	
00000000-0000-0000-0000-000000000000	807cd7d9-9d28-4ba0-ab27-7e23a1af56ed	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:04:09.474276+00	
00000000-0000-0000-0000-000000000000	d0646cec-a358-4caa-9921-9a6be3dfb77a	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:09:33.287089+00	
00000000-0000-0000-0000-000000000000	713ca453-a44b-4d63-80f1-818cf307758d	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:09:37.06045+00	
00000000-0000-0000-0000-000000000000	85e3d534-265f-4ec0-bcbb-f3eed1acb9d3	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:10:40.335367+00	
00000000-0000-0000-0000-000000000000	7e9c97f6-93c7-41fc-ac66-204ccf32f338	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:10:40.529334+00	
00000000-0000-0000-0000-000000000000	bcd39993-f7e2-4599-9ee1-a50299f8c130	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:10:51.981593+00	
00000000-0000-0000-0000-000000000000	11329c67-3105-44bf-b775-33bd7ea41435	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:50:24.053241+00	
00000000-0000-0000-0000-000000000000	26a35416-d701-4048-ba1a-bc96ccaef256	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:50:26.694913+00	
00000000-0000-0000-0000-000000000000	01dbedd7-2f47-4bde-9b54-64ab7b4e92b6	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:50:26.894507+00	
00000000-0000-0000-0000-000000000000	e0e3981e-a217-4b87-ba89-289d37ac645b	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:50:30.188771+00	
00000000-0000-0000-0000-000000000000	93ca0bf3-fbea-4a09-ba65-27d1aa1851bc	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:50:30.384722+00	
00000000-0000-0000-0000-000000000000	c1406bad-d3c8-4009-b50a-6367dd5a6745	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:50:35.536562+00	
00000000-0000-0000-0000-000000000000	24d7e179-da9d-43d2-ab01-6e97d85e3c6a	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:50:35.736769+00	
00000000-0000-0000-0000-000000000000	7603385f-410d-4d4b-9fea-09cd6ef98264	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:59:20.646148+00	
00000000-0000-0000-0000-000000000000	f315191e-e33d-4b9c-9598-3c439a11d822	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:59:20.871141+00	
00000000-0000-0000-0000-000000000000	8fad4f34-f41b-4284-a0ee-a306f64bb850	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:59:24.587141+00	
00000000-0000-0000-0000-000000000000	dd5d75d5-1c4c-44b4-9d12-9dbd3dac3f7d	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:59:24.783366+00	
00000000-0000-0000-0000-000000000000	79c9bcef-a588-4d41-86c4-596b3afb367f	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:59:34.800802+00	
00000000-0000-0000-0000-000000000000	e969f6f1-0dc5-43da-b5c5-93c43f727b0f	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 15:59:35.018871+00	
00000000-0000-0000-0000-000000000000	056858c9-2004-4862-a77b-d5c666855b0d	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 15:59:52.295994+00	
00000000-0000-0000-0000-000000000000	87faea50-1e7a-4da6-a2bb-703ff189b7d4	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 16:01:08.70155+00	
00000000-0000-0000-0000-000000000000	84eff359-f19c-49be-8795-0b2130d43dc2	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 16:01:11.516011+00	
00000000-0000-0000-0000-000000000000	8beb2fe2-7198-48fa-996e-b8790ca4a29e	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 16:01:11.728531+00	
00000000-0000-0000-0000-000000000000	7abe0260-59b1-4253-adb1-5297a5b06cd0	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 16:01:16.787984+00	
00000000-0000-0000-0000-000000000000	a5e1d4d6-67f4-4c5b-85be-a9a90969a56d	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 16:01:17.388011+00	
00000000-0000-0000-0000-000000000000	37bd1639-4425-4d58-bd86-3292430d80ec	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 16:01:23.596815+00	
00000000-0000-0000-0000-000000000000	91ed7738-8fdb-40d7-9454-8a936ca1dd21	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 16:01:23.800352+00	
00000000-0000-0000-0000-000000000000	4be54771-be63-46c4-bdc4-12c58d66f81a	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:02:53.893279+00	
00000000-0000-0000-0000-000000000000	bba2b157-878c-42b7-a32a-a9de035bb919	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:03:31.736662+00	
00000000-0000-0000-0000-000000000000	9be67a34-4a67-436a-92c7-f23eb7f0333d	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:03:36.594942+00	
00000000-0000-0000-0000-000000000000	1e11c369-0dde-4ed2-bc49-95277c253815	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:04:19.91927+00	
00000000-0000-0000-0000-000000000000	ec5eaeaf-84c3-47a5-8063-50817df34dfd	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:04:20.494602+00	
00000000-0000-0000-0000-000000000000	59f3cbc0-8a72-47a9-a4a8-d26f5fbacdda	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:04:23.295573+00	
00000000-0000-0000-0000-000000000000	d17c6ecb-c858-4975-969c-fe46d841f1ad	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:04:23.528195+00	
00000000-0000-0000-0000-000000000000	338029b7-3e1a-45ce-b822-220a806ce50c	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:09:34.991032+00	
00000000-0000-0000-0000-000000000000	ead9d05d-c9f4-49d8-b46c-af9fc1effffb	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:09:47.081243+00	
00000000-0000-0000-0000-000000000000	346b74b2-a43b-4af3-84ba-db1da0aa95e0	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:19:28.724265+00	
00000000-0000-0000-0000-000000000000	dd2bc3aa-0bbf-4d31-a0df-805ba632bb36	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:19:28.969156+00	
00000000-0000-0000-0000-000000000000	716ae559-fa9b-4fed-8c20-eecd0e3894ed	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:19:33.78243+00	
00000000-0000-0000-0000-000000000000	c878ba78-3c41-430f-a20d-d0daf435efe9	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:19:34.008236+00	
00000000-0000-0000-0000-000000000000	f2d61f5e-c138-4940-ad58-76a091ebe31a	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:19:54.96318+00	
00000000-0000-0000-0000-000000000000	eb4b6529-14a7-4db7-833a-72808164a189	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:20:00.36238+00	
00000000-0000-0000-0000-000000000000	019b4ef4-22bc-49eb-9663-2bd38b3d521d	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:20:33.138959+00	
00000000-0000-0000-0000-000000000000	6d75749f-da10-44ef-89f3-9f296d334102	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:20:38.48017+00	
00000000-0000-0000-0000-000000000000	c87009ad-3483-4221-9fe2-fc282ef69412	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:34:14.539231+00	
00000000-0000-0000-0000-000000000000	a9880d2f-be12-4b30-a1ce-953470b958e0	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:34:19.980334+00	
00000000-0000-0000-0000-000000000000	7c018f79-13e4-4e8c-8fcb-308cd16f2454	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:34:39.767795+00	
00000000-0000-0000-0000-000000000000	850e2fb3-ab0a-4119-a012-dc8cbae66718	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:34:44.212982+00	
00000000-0000-0000-0000-000000000000	26cad637-f21e-4775-bee3-a1d8e7d71e3a	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:35:41.393702+00	
00000000-0000-0000-0000-000000000000	ddc894f9-2314-47ed-8cdf-2d3acab3f4dd	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:35:47.087603+00	
00000000-0000-0000-0000-000000000000	95938aca-1055-4048-a62a-cf19cf0cf76d	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:40:34.88332+00	
00000000-0000-0000-0000-000000000000	ab0db289-911e-4d37-b541-d56b85ab9c8c	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:40:39.522043+00	
00000000-0000-0000-0000-000000000000	dadc67d7-5b6c-407b-a034-75afad2f0148	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:40:43.24033+00	
00000000-0000-0000-0000-000000000000	2ccfc964-4597-4fd2-a579-f44f13c1b3de	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:40:50.301746+00	
00000000-0000-0000-0000-000000000000	2bf81aaf-98ff-4a62-a0a9-61564b94c89c	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-17 17:44:20.393319+00	
00000000-0000-0000-0000-000000000000	df141956-da64-4240-a7d7-7171d1407538	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-17 17:44:25.482638+00	
00000000-0000-0000-0000-000000000000	25375876-b972-462b-80af-ed5f088e930e	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:05:40.82889+00	
00000000-0000-0000-0000-000000000000	c64500ca-0724-4280-ba56-c5ed6ebe3bf1	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-18 13:30:13.980732+00	
00000000-0000-0000-0000-000000000000	b340c650-8ad3-48ee-a7ad-729ce3480ada	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:30:53.242553+00	
00000000-0000-0000-0000-000000000000	3b3e3790-883c-4849-9c33-6cc8e730c15e	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-18 13:33:37.387824+00	
00000000-0000-0000-0000-000000000000	92a0fdb6-f4cc-4500-898f-c9a63b955f00	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:33:42.062748+00	
00000000-0000-0000-0000-000000000000	d0b94465-9b1e-4c4f-bdb4-4d8f480a0582	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-18 13:33:42.261227+00	
00000000-0000-0000-0000-000000000000	1c04bba6-9689-41fd-9a10-2edb80c071c1	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:33:44.136496+00	
00000000-0000-0000-0000-000000000000	762fa48b-090e-4418-813e-e2b03838dc86	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-18 13:33:44.336976+00	
00000000-0000-0000-0000-000000000000	26cce47e-b12e-4512-b52d-e72c6dd46b40	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:33:50.739298+00	
00000000-0000-0000-0000-000000000000	607ab893-baaa-4c8c-84b5-a9277056ee30	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:34:16.635018+00	
00000000-0000-0000-0000-000000000000	43a7fad6-2530-41be-8fca-ad86fa6aed65	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:39:09.189366+00	
00000000-0000-0000-0000-000000000000	f59814bb-c4ba-405b-b609-c5099389da69	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:43:57.994686+00	
00000000-0000-0000-0000-000000000000	ad85b03c-ba9d-4007-856e-9a11998f2fa5	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-18 13:45:00.061712+00	
00000000-0000-0000-0000-000000000000	25c06757-6d41-4841-8aae-e9b7559b7d84	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-18 22:17:56.772307+00	
00000000-0000-0000-0000-000000000000	ac60dda2-c100-4bd9-9aab-dd2a9dc89f9a	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-18 22:17:56.780429+00	
00000000-0000-0000-0000-000000000000	a988e4b9-1a30-431d-8330-83b4e26297e4	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-18 22:22:26.552321+00	
00000000-0000-0000-0000-000000000000	6cd11e24-2d7a-49c3-9c40-cb4804018fec	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-18 22:22:26.553942+00	
00000000-0000-0000-0000-000000000000	ddd5741d-2fd5-4e92-a878-74b6ad7ceb98	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:07:12.011685+00	
00000000-0000-0000-0000-000000000000	7d305fa1-8225-4d0d-b862-e32151b36386	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:07:12.033757+00	
00000000-0000-0000-0000-000000000000	be01082e-c1a9-4de5-b8a3-c31da87518c7	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:16:13.503806+00	
00000000-0000-0000-0000-000000000000	377155bc-ce1e-4e9c-909c-4c7d66de87b2	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:16:13.506737+00	
00000000-0000-0000-0000-000000000000	5aef70e8-5e41-44d9-9d1e-9998c2cc2446	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:28:32.50066+00	
00000000-0000-0000-0000-000000000000	db960ae8-0dda-4b1e-96bc-2904edf8c9af	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:28:32.502168+00	
00000000-0000-0000-0000-000000000000	ca952d55-062a-4aa1-9982-b40f498c649f	{"action":"token_refreshed","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:30:19.066253+00	
00000000-0000-0000-0000-000000000000	9f9bbcdf-8d1d-42b4-8dc1-a8f4592e003e	{"action":"token_revoked","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 16:30:19.067756+00	
00000000-0000-0000-0000-000000000000	262aeec5-77c8-4938-801c-8bc160abf824	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-19 16:30:59.70486+00	
00000000-0000-0000-0000-000000000000	a000fe8e-7fcb-451d-b5d0-3dcf5a7ef362	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-19 16:31:03.712464+00	
00000000-0000-0000-0000-000000000000	5f0d68c3-7981-4708-b802-5475e64e310e	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 17:09:27.704517+00	
00000000-0000-0000-0000-000000000000	447bbb57-3341-4c8d-be8d-cd11888dc494	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 17:09:27.706732+00	
00000000-0000-0000-0000-000000000000	edc8a6d6-8ba5-45f5-80e3-204cbec59bfb	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 17:23:24.813629+00	
00000000-0000-0000-0000-000000000000	52675d8d-2b79-4630-b410-aad5d3c9be5d	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 17:23:24.816022+00	
00000000-0000-0000-0000-000000000000	b792027b-8591-470d-a029-dfc536806cfb	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 17:49:26.110057+00	
00000000-0000-0000-0000-000000000000	04d4ce20-4488-4939-9afc-ed59315ff6b3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 17:49:26.115284+00	
00000000-0000-0000-0000-000000000000	e042a9f3-b666-496c-8fb8-6d310c98b363	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 18:25:02.26364+00	
00000000-0000-0000-0000-000000000000	77ab28c8-9df0-4187-bfb1-7a94422ef2b9	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 18:25:02.266453+00	
00000000-0000-0000-0000-000000000000	e3734a7e-e700-458b-af01-ecc85507ae16	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 18:50:38.07291+00	
00000000-0000-0000-0000-000000000000	252ad8ac-ce1a-4a77-ad9c-a1283040485f	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 18:50:38.074441+00	
00000000-0000-0000-0000-000000000000	03817ea5-224d-4191-82d1-4aed97cacbf0	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 19:41:44.061164+00	
00000000-0000-0000-0000-000000000000	ff999997-6d7b-498c-9879-0c2d961bf3c7	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 19:41:44.063288+00	
00000000-0000-0000-0000-000000000000	a79d5305-f6f8-421e-b413-98c503a678f1	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 19:50:05.431444+00	
00000000-0000-0000-0000-000000000000	b678f3ed-8dad-4c7b-ace1-141e559ddba7	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 19:50:05.43367+00	
00000000-0000-0000-0000-000000000000	f0c8d135-72cf-44e2-84a8-cd4d0b04c403	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 19:50:29.986889+00	
00000000-0000-0000-0000-000000000000	495f4a04-0de6-45f9-83ea-6bd42d5b933d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 19:50:29.987595+00	
00000000-0000-0000-0000-000000000000	f53a5be8-958a-4f4d-a6a4-75183d6ba5e2	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 20:48:38.519566+00	
00000000-0000-0000-0000-000000000000	f20638ca-6841-416a-9a4f-9a436d7527a6	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 20:48:38.521867+00	
00000000-0000-0000-0000-000000000000	c0a329cb-9e4a-43bc-a83c-cf977dd33d0d	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 22:11:24.161957+00	
00000000-0000-0000-0000-000000000000	e5d11703-532a-4c35-9d6d-690525f7e73d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 22:11:24.163669+00	
00000000-0000-0000-0000-000000000000	a534c9f0-51d2-46e7-84ee-882c4ce04571	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-19 22:57:32.102102+00	
00000000-0000-0000-0000-000000000000	adbb8ac7-e7c8-4b6b-9109-6f708f4cd3fa	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 23:06:25.097611+00	
00000000-0000-0000-0000-000000000000	bb1cdc84-26d5-4095-8634-d1e6578e53bf	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-19 23:06:25.099951+00	
00000000-0000-0000-0000-000000000000	35dd1ce8-5b8e-4901-891c-9c2e34cb1590	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 18:23:56.848379+00	
00000000-0000-0000-0000-000000000000	bc2407c8-7dfe-4f9b-9d80-a86e303eaebe	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 18:23:56.869445+00	
00000000-0000-0000-0000-000000000000	edd4577f-6d9b-4f70-89e6-ce627338e10e	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 18:24:09.000624+00	
00000000-0000-0000-0000-000000000000	43f4ffec-0ed5-49b6-be11-0b22aac11016	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 18:24:09.00542+00	
00000000-0000-0000-0000-000000000000	6de5b2d7-424b-4844-8be1-ee088c415e50	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 18:40:18.779627+00	
00000000-0000-0000-0000-000000000000	fadf4ed3-fa93-4522-98cb-8e49cb7691c0	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 18:40:18.783087+00	
00000000-0000-0000-0000-000000000000	be96b6e8-3207-48d4-9614-0502a25e40a8	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 23:15:49.928965+00	
00000000-0000-0000-0000-000000000000	8ca5d862-acd1-4200-9be2-56f22179463e	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 23:15:49.940987+00	
00000000-0000-0000-0000-000000000000	9690958d-bec3-46ad-8412-93acbac499a2	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 23:16:05.447728+00	
00000000-0000-0000-0000-000000000000	b712b38f-7733-41e9-b92a-319fe26898cb	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 23:16:05.448385+00	
00000000-0000-0000-0000-000000000000	af35f5ac-82c1-4936-b94d-1664b2d5d2eb	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 23:16:17.794793+00	
00000000-0000-0000-0000-000000000000	7f0ba874-5b13-4e61-a69e-5c94f4a24cb0	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-20 23:16:17.795442+00	
00000000-0000-0000-0000-000000000000	1772da10-42b0-4ac8-a90a-d8414942d550	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-20 23:16:54.671357+00	
00000000-0000-0000-0000-000000000000	7c031da7-9b1f-4618-8fbf-95da1b0da270	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-20 23:16:58.622911+00	
00000000-0000-0000-0000-000000000000	3d97dfea-eaad-4fbf-bc76-cfe0d0b5cf0e	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-20 23:55:56.926902+00	
00000000-0000-0000-0000-000000000000	f21878bd-d0d5-480e-98a2-5877b48134d1	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-20 23:56:03.655165+00	
00000000-0000-0000-0000-000000000000	7e430378-0e44-4d0a-b48e-810230f39a3e	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 00:14:48.826708+00	
00000000-0000-0000-0000-000000000000	ee9d4ed9-3f1b-4cb0-9b0e-a4577567e530	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 00:14:48.830384+00	
00000000-0000-0000-0000-000000000000	91e030ec-50dc-434b-8973-d7c14b9420a1	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 00:18:39.13688+00	
00000000-0000-0000-0000-000000000000	ad0661d9-e425-4c2b-a3d9-229ab884f4da	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 00:18:39.137851+00	
00000000-0000-0000-0000-000000000000	7640c991-560b-4d45-a0b1-fd3ab3fa51c0	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 01:07:02.273824+00	
00000000-0000-0000-0000-000000000000	a7d659f2-760d-44a6-b4d4-a913ac68ef13	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 01:07:02.276698+00	
00000000-0000-0000-0000-000000000000	55cd1cd2-e96a-4a7b-a566-dd1fe6c434bb	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 01:16:51.838251+00	
00000000-0000-0000-0000-000000000000	67cd1359-1773-446f-8159-0c138d4008d7	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 01:16:51.840707+00	
00000000-0000-0000-0000-000000000000	3c9514e9-d2ae-4599-a4c9-3504bb15006a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 01:20:38.007776+00	
00000000-0000-0000-0000-000000000000	26768c51-c0ca-4194-80f8-458b7db053a3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 01:20:38.010746+00	
00000000-0000-0000-0000-000000000000	178e3ed3-c0b9-44d8-9899-a3d8b070eb30	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 02:24:15.652986+00	
00000000-0000-0000-0000-000000000000	58c8de1c-fcc6-412d-bd3a-4c1f54cd1388	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 02:24:15.655619+00	
00000000-0000-0000-0000-000000000000	f2c5f064-56bd-4f07-8a84-35a749edef4b	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-21 11:51:00.28534+00	
00000000-0000-0000-0000-000000000000	7608ee99-cb43-4df4-b8d2-2faab7a5777d	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 18:03:01.502272+00	
00000000-0000-0000-0000-000000000000	c867551e-7432-4bde-8640-dca5de527b84	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 18:03:01.517246+00	
00000000-0000-0000-0000-000000000000	81bfee9d-b5db-4241-8688-245938092429	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 19:22:10.319006+00	
00000000-0000-0000-0000-000000000000	d3b31328-a780-40d2-a857-f4691310025c	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 19:22:10.328936+00	
00000000-0000-0000-0000-000000000000	7b85e8df-b9b2-4bc3-8dc3-38d0d00ef438	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 22:27:18.252172+00	
00000000-0000-0000-0000-000000000000	ad996833-344a-4e67-b5d9-52a9950911fb	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-21 22:27:18.254865+00	
00000000-0000-0000-0000-000000000000	09be77b7-836b-4797-bf57-7cf1c8126857	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 16:48:51.194335+00	
00000000-0000-0000-0000-000000000000	cfa25c2a-f8ca-4547-a5ad-9cb7d96e85c9	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 16:48:51.210535+00	
00000000-0000-0000-0000-000000000000	b8d39943-f0f2-465d-8cc0-5b69ac6dfca5	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 17:05:46.812403+00	
00000000-0000-0000-0000-000000000000	bc498980-b025-40a5-8082-b3771a0e64b6	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 17:05:46.813374+00	
00000000-0000-0000-0000-000000000000	0642ef6f-0fd1-46f8-ad51-deb580300d6f	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 18:15:47.777135+00	
00000000-0000-0000-0000-000000000000	e2c14ee5-77a2-4b7d-ae58-1d89f4b4a5ce	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 18:15:47.780518+00	
00000000-0000-0000-0000-000000000000	a6620bf8-1a40-44cc-972d-bcbaaed502b1	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 18:25:59.757102+00	
00000000-0000-0000-0000-000000000000	fd1114f3-e226-4169-bd82-6c972c4da5e8	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 18:25:59.75808+00	
00000000-0000-0000-0000-000000000000	ceae8d13-5298-4046-9fdf-4379827176e3	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 18:50:42.565008+00	
00000000-0000-0000-0000-000000000000	86bfde07-f015-46d2-a1c5-ca472a685b16	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 18:50:42.568343+00	
00000000-0000-0000-0000-000000000000	fb11a34a-5f48-4248-b0e3-69d037db38d0	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 19:47:56.290196+00	
00000000-0000-0000-0000-000000000000	c476e0cd-2f8c-4d1b-8431-67ec6542ae5f	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 19:47:56.292222+00	
00000000-0000-0000-0000-000000000000	088fe069-f532-4714-a91d-b1c8ada7dd7a	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 19:48:23.481611+00	
00000000-0000-0000-0000-000000000000	fade07d8-da71-4a4d-a9f3-163bed42ebd9	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-22 19:48:23.482795+00	
00000000-0000-0000-0000-000000000000	c63fc602-a586-4414-a2f3-3782630dd8c9	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-23 01:28:18.833695+00	
00000000-0000-0000-0000-000000000000	305e2459-b1cf-434f-a5f3-e91a7c63d343	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-23 01:28:18.849076+00	
00000000-0000-0000-0000-000000000000	e6617acd-7281-4f80-a27d-d7fdb31a9308	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-23 02:04:55.672731+00	
00000000-0000-0000-0000-000000000000	395a8d84-7c3a-47f2-ad82-6b664b710c90	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-23 02:04:55.676264+00	
00000000-0000-0000-0000-000000000000	ab6e5528-aa3e-4e56-8171-18d747f38d1a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-23 15:29:21.377991+00	
00000000-0000-0000-0000-000000000000	007bc941-6a43-4ce0-aee8-2d18c81f81a8	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-23 15:29:21.403233+00	
00000000-0000-0000-0000-000000000000	77ae2c8c-3a74-4a97-aa81-62a6f8e459c2	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 16:45:09.552446+00	
00000000-0000-0000-0000-000000000000	1b475749-4f42-44b4-808a-5daabfffa7b9	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 16:46:16.560335+00	
00000000-0000-0000-0000-000000000000	d48b3420-a4e6-4e8a-b91d-bd247a95cef9	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 16:46:16.56283+00	
00000000-0000-0000-0000-000000000000	85288e6c-f377-4f34-aab0-2b55a0ef1d03	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 16:50:26.59132+00	
00000000-0000-0000-0000-000000000000	8caeb7f4-a746-46a7-bac2-260c5ce49278	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 16:50:26.592888+00	
00000000-0000-0000-0000-000000000000	cc10043a-e4ad-4db4-ad10-7a73f12f19cb	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-25 16:50:46.47459+00	
00000000-0000-0000-0000-000000000000	8a1facd2-f3b9-42a5-bc91-9a315ea480de	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 17:54:33.159532+00	
00000000-0000-0000-0000-000000000000	b5007436-d343-4835-a84f-b5945ede7d85	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 17:54:33.161772+00	
00000000-0000-0000-0000-000000000000	02398a9c-9933-46c1-9d27-27db13053946	{"action":"token_refreshed","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 17:54:39.250144+00	
00000000-0000-0000-0000-000000000000	9d1569d6-3f10-4ae1-afe5-452fc3eb1533	{"action":"token_revoked","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 17:54:39.250813+00	
00000000-0000-0000-0000-000000000000	d338d912-ada1-45f0-9001-8480fe496794	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-25 17:58:39.228184+00	
00000000-0000-0000-0000-000000000000	d8882af6-4262-4c83-a76f-414c6e4378f5	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 18:14:00.910117+00	
00000000-0000-0000-0000-000000000000	26b00dce-553d-437f-b34e-dba5761de9b6	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 18:14:00.913352+00	
00000000-0000-0000-0000-000000000000	175ce45a-513b-47b2-8732-4f369ae21cc5	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-25 18:14:22.685756+00	
00000000-0000-0000-0000-000000000000	36cfaa2b-95b2-4271-94e4-a5000e1e63e6	{"action":"token_refreshed","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 19:10:34.22486+00	
00000000-0000-0000-0000-000000000000	ba80b3c0-9a48-47f5-8da3-b20dfa0ed972	{"action":"token_revoked","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 19:10:34.227878+00	
00000000-0000-0000-0000-000000000000	db5a2eee-e21b-4f9c-baca-d378697e87f7	{"action":"token_refreshed","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 19:11:39.148131+00	
00000000-0000-0000-0000-000000000000	0a2618ba-603f-47d9-b19e-87f64d1dab62	{"action":"token_revoked","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-25 19:11:39.151064+00	
00000000-0000-0000-0000-000000000000	333ed12c-2ad7-4250-ba1e-f4799ccb92dc	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-26 16:42:46.95647+00	
00000000-0000-0000-0000-000000000000	12a87d56-859a-4fb8-b1f6-3ad5c8259c08	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-26 16:42:46.971293+00	
00000000-0000-0000-0000-000000000000	6fb1cfe8-9fdf-4a16-8080-6ee7cbaf6945	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 19:47:58.654138+00	
00000000-0000-0000-0000-000000000000	894d7d49-b95e-4779-b936-426752ecfa84	{"action":"token_refreshed","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 20:02:16.750098+00	
00000000-0000-0000-0000-000000000000	46c71dee-c07b-4db7-8924-7868034b787d	{"action":"token_revoked","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 20:02:16.752813+00	
00000000-0000-0000-0000-000000000000	a59693eb-718e-4251-8273-932c0cfef7a1	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-28 20:02:27.082287+00	
00000000-0000-0000-0000-000000000000	780ea144-d2f5-4f82-aace-bf2a63f1eb25	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-28 20:02:37.435516+00	
00000000-0000-0000-0000-000000000000	3a46b13e-c30f-4c59-ad1d-0acec8bd1655	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-28 20:02:40.358935+00	
00000000-0000-0000-0000-000000000000	9867002f-e63c-494d-80d8-df79e25ec4bc	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-28 20:02:44.016312+00	
00000000-0000-0000-0000-000000000000	326205b3-3a90-4a93-ac85-46036c16af7a	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-28 20:11:44.365486+00	
00000000-0000-0000-0000-000000000000	25c9ed46-d26c-4e4c-812b-44d907076680	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-28 20:11:56.152859+00	
00000000-0000-0000-0000-000000000000	953e2ee7-e8d1-4d03-9668-07c181cf7d25	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-28 20:12:15.728689+00	
00000000-0000-0000-0000-000000000000	a8d8962f-f13a-4d05-912f-0a324626b146	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 21:01:31.404325+00	
00000000-0000-0000-0000-000000000000	a9213f38-7d16-436a-bb48-86b1f7abf8c5	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 21:01:31.407116+00	
00000000-0000-0000-0000-000000000000	2748f782-c3ea-4e56-9060-45f1d3f43b6d	{"action":"token_refreshed","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 21:12:47.342872+00	
00000000-0000-0000-0000-000000000000	d8130b05-d671-41bc-bf2a-b642961e9e95	{"action":"token_revoked","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 21:12:47.345589+00	
00000000-0000-0000-0000-000000000000	beda8ac4-df79-4d6c-85ae-db033d1eac92	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2024-12-28 21:12:53.882407+00	
00000000-0000-0000-0000-000000000000	67392f36-a673-4abe-b2f2-f41e7419ae14	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-28 21:13:00.196787+00	
00000000-0000-0000-0000-000000000000	848c37db-73b3-4c9e-9b6a-a6837a102a62	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-28 21:51:34.444093+00	
00000000-0000-0000-0000-000000000000	d0991347-792a-477c-aef8-7c0dcfc7e605	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 22:01:01.073297+00	
00000000-0000-0000-0000-000000000000	64870144-a825-4a8a-88ca-81d3a91806ac	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 22:01:01.076552+00	
00000000-0000-0000-0000-000000000000	7edd5ecf-9065-4035-b130-b4727dd3dd34	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 22:17:12.38053+00	
00000000-0000-0000-0000-000000000000	73c66d99-8b98-4684-ba90-6bd0a5e3d9ba	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 22:17:12.383226+00	
00000000-0000-0000-0000-000000000000	31319cfe-57e8-41b8-a923-e15ca8689749	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 22:59:17.601547+00	
00000000-0000-0000-0000-000000000000	04ade2e7-0c9c-4dc7-a2c8-cde270061fdd	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-28 22:59:17.604502+00	
00000000-0000-0000-0000-000000000000	c8a917ad-5516-4557-b974-41c6af8908bf	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 00:11:28.795803+00	
00000000-0000-0000-0000-000000000000	182eac74-c5ae-4cac-a37b-0bf17802861b	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 00:11:28.81407+00	
00000000-0000-0000-0000-000000000000	4ea2a346-0933-4631-b0f0-cc993c40bddc	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 16:35:24.35222+00	
00000000-0000-0000-0000-000000000000	a5ffe586-ab73-4e2c-bfaf-9ab9bf36fbe1	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 16:35:24.363798+00	
00000000-0000-0000-0000-000000000000	3f050d75-09f1-41cc-bafa-0dc13b88b1b6	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 16:35:35.259627+00	
00000000-0000-0000-0000-000000000000	2c2a5e08-6957-4b04-be66-3e083e6f4430	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 16:35:35.260286+00	
00000000-0000-0000-0000-000000000000	501d37e3-2aac-40e3-9d74-7508ae125b68	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 18:20:45.820892+00	
00000000-0000-0000-0000-000000000000	fa91ef03-b3fc-4e89-a442-c69abb074dcb	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-29 18:20:45.823229+00	
00000000-0000-0000-0000-000000000000	0d0bc924-8cb3-46eb-9589-b52123ffc296	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-30 00:07:34.053526+00	
00000000-0000-0000-0000-000000000000	8ea6cd98-81e2-42bf-bb8a-a2029e3437e6	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-30 00:07:34.056776+00	
00000000-0000-0000-0000-000000000000	31dffcee-bbe8-4666-9226-019bf773e9b6	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-30 13:33:47.814925+00	
00000000-0000-0000-0000-000000000000	f753fdea-544b-4442-8fe8-78b91cd03d8c	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-30 13:33:47.833287+00	
00000000-0000-0000-0000-000000000000	02c89a58-c4dd-44cc-ae8f-5ecb7a35110e	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-30 23:49:25.240432+00	
00000000-0000-0000-0000-000000000000	d9c5f69b-dad4-492e-ac65-c3cec601ca14	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-30 23:52:16.313971+00	
00000000-0000-0000-0000-000000000000	db9dd5f5-e772-4799-ada8-07226c736d40	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2024-12-30 23:52:31.52519+00	
00000000-0000-0000-0000-000000000000	e46aeeb5-e059-4e3c-8928-cbcb8ed974ea	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-30 23:52:40.4337+00	
00000000-0000-0000-0000-000000000000	61bfd0d7-26c1-4d53-b548-8e8936350803	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2024-12-30 23:53:10.249589+00	
00000000-0000-0000-0000-000000000000	51428ed1-3d0e-49d5-8e96-05405b3cac10	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-31 00:51:07.384736+00	
00000000-0000-0000-0000-000000000000	9b655ade-c881-4c57-be2e-12ec15bb789e	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-31 00:51:07.396544+00	
00000000-0000-0000-0000-000000000000	25ba86e1-d26c-426f-8cdd-2afd79f546bd	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-31 01:02:01.244943+00	
00000000-0000-0000-0000-000000000000	d701da7d-5138-4518-bc07-dda18b3dc113	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2024-12-31 01:02:01.248668+00	
00000000-0000-0000-0000-000000000000	10d08f9e-e197-4c6a-890f-5d3584c08323	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 16:27:19.981853+00	
00000000-0000-0000-0000-000000000000	6b4dc445-9aba-4038-9602-594c7552a7ba	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 16:27:20.020719+00	
00000000-0000-0000-0000-000000000000	8c64dca4-a759-4613-8d2d-4ca683b1226f	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 16:38:15.231288+00	
00000000-0000-0000-0000-000000000000	c6edef5e-0fd5-4bd7-96be-da32b02899b3	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 16:38:15.235782+00	
00000000-0000-0000-0000-000000000000	ab669e1e-4808-48b4-aa7e-f0c5299a4a5e	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 16:40:43.585412+00	
00000000-0000-0000-0000-000000000000	167e4ce6-392a-444f-bf4f-11a69255e4b7	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 16:40:43.591096+00	
00000000-0000-0000-0000-000000000000	dc581456-0327-429d-aa04-e83071bdf1d7	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 17:43:51.205453+00	
00000000-0000-0000-0000-000000000000	c2fe9106-c9a3-4d02-a2bf-17bc56b42ade	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 17:43:51.216962+00	
00000000-0000-0000-0000-000000000000	c02c8bc3-934b-453f-aa2b-5f8d64fa3d10	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 17:44:22.000847+00	
00000000-0000-0000-0000-000000000000	9e6f81a2-acb0-4300-a6ea-d23eb11e999e	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 17:44:22.004188+00	
00000000-0000-0000-0000-000000000000	299ffac3-a1fa-4286-8702-d0372f422cc0	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-02 17:46:46.134052+00	
00000000-0000-0000-0000-000000000000	21fe94c5-10c0-41be-9cd7-fd7a36da7e9e	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2025-01-02 18:03:06.349807+00	
00000000-0000-0000-0000-000000000000	6e88d53b-728a-4899-a45c-5b6d564bfd15	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-02 18:03:11.336155+00	
00000000-0000-0000-0000-000000000000	68e3074f-cadd-4396-a910-0baed4ba47a9	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-02 18:05:48.695544+00	
00000000-0000-0000-0000-000000000000	cd50eb5e-f008-4389-a0d1-90026e8ee264	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-02 18:16:53.768558+00	
00000000-0000-0000-0000-000000000000	ea4658c2-9348-4828-a234-0d568543e8b5	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-02 18:16:55.958307+00	
00000000-0000-0000-0000-000000000000	651bde2a-9fc2-4b12-8a99-82cacc90c032	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 18:42:04.423766+00	
00000000-0000-0000-0000-000000000000	d19ee4c3-bccd-4d70-a2b6-ab5b6bde00d6	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 18:42:04.428709+00	
00000000-0000-0000-0000-000000000000	2c241722-09f2-4add-8a7c-5255238e92a1	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 19:22:43.923016+00	
00000000-0000-0000-0000-000000000000	31f1f844-dc2e-4ce5-98eb-aba89c9174e5	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 19:22:43.927406+00	
00000000-0000-0000-0000-000000000000	69607a3a-7d28-4031-86b0-8ae3fd965771	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 22:58:51.428173+00	
00000000-0000-0000-0000-000000000000	0246420f-7b79-44d8-bed1-edd5a237f99a	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-02 22:58:51.445811+00	
00000000-0000-0000-0000-000000000000	6c53d533-5a8e-4349-a391-1156c242364b	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-03 18:51:55.656378+00	
00000000-0000-0000-0000-000000000000	482ad1ac-22d8-4280-ac95-d11f3eb80be8	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 18:56:46.910864+00	
00000000-0000-0000-0000-000000000000	dd8a6f45-f88b-4c21-848a-f98a5faa8f1f	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 18:56:46.91657+00	
00000000-0000-0000-0000-000000000000	2a9dfef1-9411-48d5-b70d-0c6753918f23	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 19:56:09.270177+00	
00000000-0000-0000-0000-000000000000	6f7ac6da-cc39-40f2-a988-ecda03296bb5	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 19:56:09.27367+00	
00000000-0000-0000-0000-000000000000	a9ec961d-8e3a-4a62-b07b-f1b1c5369af4	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 19:59:41.05689+00	
00000000-0000-0000-0000-000000000000	f1864bff-1405-4d33-88ed-1dc33ac37ec5	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 19:59:41.059785+00	
00000000-0000-0000-0000-000000000000	a5d5abe0-bf72-4dab-bf18-179ce674314e	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 20:54:28.642803+00	
00000000-0000-0000-0000-000000000000	41a4e2ca-2e0c-45b1-88e6-ee5db106229f	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-03 20:54:28.647023+00	
00000000-0000-0000-0000-000000000000	2f02362f-9930-4446-a3ce-b43bd7e1a79c	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 02:27:46.95377+00	
00000000-0000-0000-0000-000000000000	cde1430a-ae76-40fc-bae4-7a8d8178b062	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 02:27:46.983027+00	
00000000-0000-0000-0000-000000000000	dd4d0c14-d421-4bbd-8c45-f6f765d48afc	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 02:28:02.330664+00	
00000000-0000-0000-0000-000000000000	1bb460fc-a112-4ca5-8ed2-8677f898caf0	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 02:28:02.331359+00	
00000000-0000-0000-0000-000000000000	2f085676-114b-4359-b110-c03815ba779b	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-04 02:43:42.978673+00	
00000000-0000-0000-0000-000000000000	c0c01f7d-8f38-46b1-90b5-2d6910e24310	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-04 02:43:50.764918+00	
00000000-0000-0000-0000-000000000000	0c20cd36-91f9-4bdf-a995-3ac8c58c2f04	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 03:28:26.292753+00	
00000000-0000-0000-0000-000000000000	031c7793-4396-4b76-bf4d-0ffdb56ec4f3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 03:28:26.298833+00	
00000000-0000-0000-0000-000000000000	d2effd87-9223-4525-87d1-9fb4b9094b3e	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 03:42:05.229789+00	
00000000-0000-0000-0000-000000000000	b4b438ac-7914-4070-ba28-3fe1c8a1e85a	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 03:42:05.233312+00	
00000000-0000-0000-0000-000000000000	5ab126e7-7b60-4b0f-a8c4-1c655a9e4005	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 04:38:01.947791+00	
00000000-0000-0000-0000-000000000000	9a9efc24-5985-44a7-88be-302adae08f9d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 04:38:01.958261+00	
00000000-0000-0000-0000-000000000000	812afea0-6ae8-4c4d-85d4-d86008272ab1	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 04:40:24.549753+00	
00000000-0000-0000-0000-000000000000	2adff46c-8831-47c7-902d-fdd65d37406f	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 04:40:24.551426+00	
00000000-0000-0000-0000-000000000000	9c71ce6e-b926-4065-9cb8-aee45c10f880	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 13:29:09.505034+00	
00000000-0000-0000-0000-000000000000	bb2eda17-19c3-46fa-8d1d-d52143fd4dc8	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 13:29:09.530067+00	
00000000-0000-0000-0000-000000000000	ed66b440-f3ae-43d4-a6f4-3ddd78748856	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 13:34:43.022051+00	
00000000-0000-0000-0000-000000000000	5022bf11-8cd3-4fb8-8dd0-e2fb63635d99	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 13:34:43.025289+00	
00000000-0000-0000-0000-000000000000	f75ecf5f-ee3f-4206-a22e-d49a19e4ef77	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 14:06:00.22531+00	
00000000-0000-0000-0000-000000000000	c9d5ec88-6291-4b1b-9b8b-64b546dcd104	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 14:06:00.233755+00	
00000000-0000-0000-0000-000000000000	58f8fc74-433e-4292-908d-671b39c1b771	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 14:33:09.384057+00	
00000000-0000-0000-0000-000000000000	52cf2ccf-82e5-4494-90c7-58466e6e8cea	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 14:33:09.387455+00	
00000000-0000-0000-0000-000000000000	38c82c87-8d06-433a-9c1a-b42b62c487ce	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-04 14:33:35.260352+00	
00000000-0000-0000-0000-000000000000	52bec3fc-2825-4a0e-9cab-02aed9983caa	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:23:01.835501+00	
00000000-0000-0000-0000-000000000000	9fa9e3c3-b826-4be9-b6f4-2c0272b602ba	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:23:01.841922+00	
00000000-0000-0000-0000-000000000000	b07a99ac-f134-4998-993d-525b89386e53	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:23:09.01611+00	
00000000-0000-0000-0000-000000000000	c458f487-d914-4f33-a517-d4ee099d1e05	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:23:09.016827+00	
00000000-0000-0000-0000-000000000000	075fbf5e-dcd9-4a78-853c-0fff71657a16	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:49:43.95506+00	
00000000-0000-0000-0000-000000000000	ccad51fc-3829-4914-86cc-d620c68bf5e1	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:49:43.958267+00	
00000000-0000-0000-0000-000000000000	08855df0-39dc-4829-b5af-193151903648	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:52:13.165205+00	
00000000-0000-0000-0000-000000000000	d3dd8df4-a244-4b83-82fd-6e8ded0efafd	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 16:52:13.166703+00	
00000000-0000-0000-0000-000000000000	860a2317-442e-41f6-b227-c71becf87fba	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 17:34:37.036626+00	
00000000-0000-0000-0000-000000000000	f944671f-e8bc-4350-b251-7492c8ad0299	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 17:34:37.038989+00	
00000000-0000-0000-0000-000000000000	f233310a-43a5-42a9-9ea5-87df82da6f83	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 18:44:36.436378+00	
00000000-0000-0000-0000-000000000000	04367a65-5936-4f8f-95a5-7a52f9de3da0	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 18:44:36.441483+00	
00000000-0000-0000-0000-000000000000	e011ca5a-c184-48ae-9012-270cda4e4789	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 18:52:15.080921+00	
00000000-0000-0000-0000-000000000000	f382706f-beb8-4576-9598-b7b61565cf9a	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 18:52:15.089016+00	
00000000-0000-0000-0000-000000000000	98bcc101-357c-4a7e-866d-c28217db516c	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 19:23:31.602747+00	
00000000-0000-0000-0000-000000000000	42ede972-1637-4c69-bc7e-ae0ffc0917b3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 19:23:31.605169+00	
00000000-0000-0000-0000-000000000000	82eafa5a-6be4-4c0e-baf5-b4cdbb18a9f7	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 19:50:12.030752+00	
00000000-0000-0000-0000-000000000000	702491b0-1809-42fa-b22c-be3c853833c4	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 19:50:12.039425+00	
00000000-0000-0000-0000-000000000000	c00cc06c-4b0b-4d18-b7d3-0eb1bcb62641	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 20:06:07.345891+00	
00000000-0000-0000-0000-000000000000	d5e1d4d0-30c1-4b14-9c32-61dcb236364a	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 20:06:07.348503+00	
00000000-0000-0000-0000-000000000000	3f40600b-d486-4c0c-97eb-90db81938f3b	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 20:34:32.261203+00	
00000000-0000-0000-0000-000000000000	e9d790e1-5f30-401c-8524-1d0b9ae4506c	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 20:34:32.264532+00	
00000000-0000-0000-0000-000000000000	7afac34e-64cc-4397-af75-890cfbfbfa8e	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:24:49.626739+00	
00000000-0000-0000-0000-000000000000	b62f2a41-ce0c-4e52-b529-b76842107f9c	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:24:49.631758+00	
00000000-0000-0000-0000-000000000000	3cbd0c14-922f-4e23-bced-38005b03ba72	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:28:33.428966+00	
00000000-0000-0000-0000-000000000000	186e7a7c-0ad5-4171-a5bf-2c5062947f4e	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:28:33.43158+00	
00000000-0000-0000-0000-000000000000	8a0688a9-d71f-48ce-9b02-c64eb194dc90	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:44:02.272647+00	
00000000-0000-0000-0000-000000000000	7cb2b4a8-59d8-4e97-a1f6-83627f50d9e7	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:44:02.275553+00	
00000000-0000-0000-0000-000000000000	d9b73138-372e-4c7d-a23c-3dbfb7ecada8	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:47:54.231694+00	
00000000-0000-0000-0000-000000000000	fa33ba03-1794-4442-a8d5-4b3e01c3c885	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 22:47:54.235058+00	
00000000-0000-0000-0000-000000000000	f9297894-864c-4169-a758-1f34b770d786	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 23:26:28.21982+00	
00000000-0000-0000-0000-000000000000	7baa24ba-91c2-41be-8f01-cf8299ffcfa0	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 23:26:28.221713+00	
00000000-0000-0000-0000-000000000000	fea8944c-7c07-442e-82e9-137dfa770618	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 23:44:50.243017+00	
00000000-0000-0000-0000-000000000000	bfaa8978-7e65-48b7-99e5-5d0b8bd5a046	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 23:44:50.247164+00	
00000000-0000-0000-0000-000000000000	3b0e155a-46eb-47f2-8270-35477da5cf99	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 23:50:50.285494+00	
00000000-0000-0000-0000-000000000000	c4348a1d-dfe0-4e9d-b40f-1be10e70ce0d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-04 23:50:50.28852+00	
00000000-0000-0000-0000-000000000000	17f2e3c4-cd4c-4022-9da8-e44dbc19a1e9	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 00:26:55.876697+00	
00000000-0000-0000-0000-000000000000	61efd9be-9710-4600-91d8-ba9a3a970bb4	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 00:26:55.885286+00	
00000000-0000-0000-0000-000000000000	903ba6cd-97b6-4386-bcc6-37d97e233ef2	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 00:45:49.553615+00	
00000000-0000-0000-0000-000000000000	151903ec-0747-4d5f-bbff-33e365766dda	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 00:45:49.557489+00	
00000000-0000-0000-0000-000000000000	9b746e73-f704-4eca-b40e-7208ef7f6c1a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 01:08:26.846099+00	
00000000-0000-0000-0000-000000000000	2034a57a-ea07-475e-99ac-035ca9c19372	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 01:08:26.850913+00	
00000000-0000-0000-0000-000000000000	38664937-d964-48de-9ea2-55eee7f2e463	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 01:31:13.186085+00	
00000000-0000-0000-0000-000000000000	0a48d3fd-ccb1-4f39-84f8-438da7d9b06f	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 01:31:13.189222+00	
00000000-0000-0000-0000-000000000000	957956c6-ee4e-4073-b038-58c27e34d6c5	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 01:47:06.234262+00	
00000000-0000-0000-0000-000000000000	ee6011e0-2c70-4ef9-b84d-82a9f7d22683	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 01:47:06.236529+00	
00000000-0000-0000-0000-000000000000	6cde2cda-5297-420e-92d6-965369ca9095	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 02:43:09.14457+00	
00000000-0000-0000-0000-000000000000	cf9dc501-acda-4ddb-823e-32aea43ec4c2	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 02:43:09.149136+00	
00000000-0000-0000-0000-000000000000	27f88394-e67f-4150-a8c4-85b43d5b2c10	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 02:45:08.96709+00	
00000000-0000-0000-0000-000000000000	f757b323-fd69-4b9b-89e6-652b78e7a26b	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 02:45:08.968771+00	
00000000-0000-0000-0000-000000000000	254c75fd-f87a-4e8a-87d7-06245a5be21a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 12:11:35.669351+00	
00000000-0000-0000-0000-000000000000	687acce6-b30f-421c-bdc2-f89f24d23cf0	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 12:11:35.693919+00	
00000000-0000-0000-0000-000000000000	02cded8c-757c-49ea-a2a4-7733df5c15e9	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:21:56.903691+00	
00000000-0000-0000-0000-000000000000	bb73724a-e754-4f35-9b36-1d8094c16021	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-05 12:35:38.228849+00	
00000000-0000-0000-0000-000000000000	947a1142-66df-4d8c-ae58-9757f2132e7c	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:35:45.18286+00	
00000000-0000-0000-0000-000000000000	a862ab43-eb3b-4f17-9f82-71e2eb9fb5ca	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-05 12:35:56.063104+00	
00000000-0000-0000-0000-000000000000	61f3c886-6f75-4734-8b86-661e7bd844b5	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:36:06.635146+00	
00000000-0000-0000-0000-000000000000	410c303c-0e57-45da-ba93-42a3b29215f0	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:38:54.200104+00	
00000000-0000-0000-0000-000000000000	e1969758-4c66-475e-9110-af0bb7e79a9f	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-05 12:39:06.060838+00	
00000000-0000-0000-0000-000000000000	18bb1952-7a9d-4820-b825-417482b7881e	{"action":"login","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:39:31.330317+00	
00000000-0000-0000-0000-000000000000	a6f61dc6-61ff-45a8-9e33-5090c300da32	{"action":"logout","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"account"}	2025-01-05 12:39:54.885596+00	
00000000-0000-0000-0000-000000000000	765ac44d-7335-4be5-ace7-a197c7cf47f7	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:40:08.004488+00	
00000000-0000-0000-0000-000000000000	750eabf2-2be0-40ce-8371-df41ba74ec17	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-05 12:40:29.375916+00	
00000000-0000-0000-0000-000000000000	b143f31a-2c55-4d1b-a4c4-8708fae7ed46	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:40:35.510233+00	
00000000-0000-0000-0000-000000000000	6616b70c-2d3f-4513-8390-544aced55f6e	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:41:08.685546+00	
00000000-0000-0000-0000-000000000000	293a81ff-d055-42ee-8c20-1f0dbbfcf26f	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-05 12:59:04.711277+00	
00000000-0000-0000-0000-000000000000	9ec7ea4f-0c4d-4750-aa3c-d02db6efef10	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 12:59:06.466004+00	
00000000-0000-0000-0000-000000000000	b491e0e2-f4e0-4756-81d6-724801ca8b36	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 13:12:59.010078+00	
00000000-0000-0000-0000-000000000000	48c9dbbc-16f4-44f7-9c4a-5e5182aa202a	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-05 13:13:04.346793+00	
00000000-0000-0000-0000-000000000000	5e512a82-9293-404a-a52e-c3ec3c7bbb0d	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 13:13:09.81539+00	
00000000-0000-0000-0000-000000000000	c6354bc9-35e0-4b19-ac68-6ed802a014f0	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 13:19:54.745786+00	
00000000-0000-0000-0000-000000000000	86f76f49-a6f7-45a8-9404-d589e83c5977	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 13:19:54.748073+00	
00000000-0000-0000-0000-000000000000	f7028ef8-6364-47f5-95f4-de3096788b96	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-05 13:20:21.053251+00	
00000000-0000-0000-0000-000000000000	07e160a0-e361-4845-940f-f395c74fe219	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 14:13:52.097936+00	
00000000-0000-0000-0000-000000000000	46fd483e-0541-4242-8dd4-aae30602a750	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 14:13:52.100597+00	
00000000-0000-0000-0000-000000000000	e7fa7922-e9a0-4c0b-ac44-0d67967c64ff	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 14:17:56.309429+00	
00000000-0000-0000-0000-000000000000	7e257a34-9bb2-45e8-8385-f612fe2022cd	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 14:17:56.311613+00	
00000000-0000-0000-0000-000000000000	0693c82e-1cc0-4b5b-b47f-d7e7260b6685	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 14:26:23.016782+00	
00000000-0000-0000-0000-000000000000	a2dfafaa-4e6c-4cee-a7db-3020c6a2bee1	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 14:26:23.018566+00	
00000000-0000-0000-0000-000000000000	87fb5fbc-0ef2-400c-961c-92218b8a84a7	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 19:25:50.099034+00	
00000000-0000-0000-0000-000000000000	ed3b1390-4c98-4c9f-a54e-5df5003f95a7	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 19:25:50.107491+00	
00000000-0000-0000-0000-000000000000	354d5ef1-2755-4591-9320-c58039a14a6a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 20:07:30.931666+00	
00000000-0000-0000-0000-000000000000	90316315-f4c2-4eaf-9e66-b46df1b9b701	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 20:07:30.935055+00	
00000000-0000-0000-0000-000000000000	cb17c184-9b82-4d80-a635-3aca74fafaef	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 20:24:02.53946+00	
00000000-0000-0000-0000-000000000000	6a5c328e-ea8b-4ea2-b762-106d5c354d7b	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 20:24:02.543935+00	
00000000-0000-0000-0000-000000000000	d47f43cb-7a53-4678-ad29-df2211f592f5	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 20:38:48.461403+00	
00000000-0000-0000-0000-000000000000	40306ea3-5a17-489e-adfc-fb6239c09c47	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 20:38:48.464527+00	
00000000-0000-0000-0000-000000000000	3540c89b-8f71-406e-bdcb-09e09e84d8df	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 23:52:34.996372+00	
00000000-0000-0000-0000-000000000000	d82b62d8-5bc3-44b1-b629-a56d1b62ba24	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 23:52:35.003626+00	
00000000-0000-0000-0000-000000000000	b48afb00-d40b-407a-b493-2919a1e0a2cd	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 23:53:43.247917+00	
00000000-0000-0000-0000-000000000000	0a2fe63c-810d-438e-a51c-1793dd4c1abf	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 23:53:43.24856+00	
00000000-0000-0000-0000-000000000000	25b5d680-0eff-4800-8c95-435856cef91d	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 23:59:29.667432+00	
00000000-0000-0000-0000-000000000000	259506af-070a-42e6-9034-3c8a9edf447b	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-05 23:59:29.670582+00	
00000000-0000-0000-0000-000000000000	16e6f70c-f60e-4bd8-953a-3499d5b6f738	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 00:57:08.797806+00	
00000000-0000-0000-0000-000000000000	4086ab23-99b8-46c3-ab43-a2813d626fba	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 00:57:08.801577+00	
00000000-0000-0000-0000-000000000000	101f0cb0-b597-4467-b7df-78603a7028f4	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 00:57:40.133887+00	
00000000-0000-0000-0000-000000000000	d0315f62-ab37-4b4c-a993-1037afbca299	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 00:57:40.134631+00	
00000000-0000-0000-0000-000000000000	3d10b2c4-5eef-4137-84b7-2f8a6f836158	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 02:10:26.958331+00	
00000000-0000-0000-0000-000000000000	1bb4f062-b6b1-405a-ad38-b182a9ea8858	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 02:10:26.972023+00	
00000000-0000-0000-0000-000000000000	c1723d93-cefe-40c4-aa25-6f1f8805bf74	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 02:10:49.169252+00	
00000000-0000-0000-0000-000000000000	55b1c938-786a-49e0-ace2-607c6b7112ec	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 02:10:49.171652+00	
00000000-0000-0000-0000-000000000000	64ccfcc6-220e-4c86-a9e4-aa509447dd90	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-06 02:13:18.237612+00	
00000000-0000-0000-0000-000000000000	ba6b3676-2602-4ef6-916a-e98fc4198407	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 02:14:26.80762+00	
00000000-0000-0000-0000-000000000000	0ca7d7ab-0ee9-4cb0-bc3f-2e3ad51ffe87	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 02:22:02.487976+00	
00000000-0000-0000-0000-000000000000	631bfbac-8bc2-40f7-bf31-92b2bc49c838	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 16:19:11.513902+00	
00000000-0000-0000-0000-000000000000	593aa643-7cc3-40b2-a6fd-d651de4eb5a8	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 16:33:37.037133+00	
00000000-0000-0000-0000-000000000000	c8704f2e-7f68-4072-821c-633dad98e93a	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 16:33:37.042987+00	
00000000-0000-0000-0000-000000000000	8bb4322f-e4a2-4b37-9021-82378d137e3d	{"action":"logout","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-06 17:12:34.459825+00	
00000000-0000-0000-0000-000000000000	81e823b1-8c85-46f0-a8ed-2c4063962bbf	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 17:13:31.857759+00	
00000000-0000-0000-0000-000000000000	2cdd4b08-bb43-4408-af5f-bc2133bba661	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-06 17:13:43.059747+00	
00000000-0000-0000-0000-000000000000	0aab5966-ed84-4fe4-9948-c6a343057a0a	{"action":"user_signedup","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-01-06 17:14:07.434662+00	
00000000-0000-0000-0000-000000000000	d1da1807-d9af-4051-ad46-8832eaa753b5	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 17:14:07.43983+00	
00000000-0000-0000-0000-000000000000	6b127b92-1a91-47b0-afd8-3bbe58725ecf	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 17:14:25.151445+00	
00000000-0000-0000-0000-000000000000	41e3e44f-8265-4874-8e44-eedcb6f88833	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 17:18:09.302079+00	
00000000-0000-0000-0000-000000000000	3dfcba41-d72a-4b57-9fa5-72ffd52f5313	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 17:38:55.068697+00	
00000000-0000-0000-0000-000000000000	088ac64d-98ef-4c41-b3c7-354c8f962c31	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 17:38:55.0728+00	
00000000-0000-0000-0000-000000000000	240028fa-780a-40ef-9b82-f310f562450c	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 17:51:55.274471+00	
00000000-0000-0000-0000-000000000000	596dcaca-4627-4fca-8673-9fa3b58b7304	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-01-06 17:52:02.383176+00	
00000000-0000-0000-0000-000000000000	0ac124a7-d3d8-46b7-a89c-53935cc0abf0	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 17:52:18.192175+00	
00000000-0000-0000-0000-000000000000	a766d6e8-195b-40ff-8fb7-2732c28e5885	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 17:54:02.557211+00	
00000000-0000-0000-0000-000000000000	6c3065a2-14c2-4b4e-9d3d-f0353083e740	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 17:54:02.559084+00	
00000000-0000-0000-0000-000000000000	05900c61-1e68-4831-a881-e37e7dab65a4	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 18:07:59.851335+00	
00000000-0000-0000-0000-000000000000	2cb85845-3d63-4813-9bbe-d7ebeaf7f4e4	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 18:10:41.073246+00	
00000000-0000-0000-0000-000000000000	3144d62f-d77d-48f9-a9ff-7b65fb912201	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 18:11:30.995848+00	
00000000-0000-0000-0000-000000000000	1a785693-dee6-410a-bfff-6acf6d88e242	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 18:11:57.412942+00	
00000000-0000-0000-0000-000000000000	7b7b1ea0-cb4d-44cf-bc08-e2cf93307f9e	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 18:19:44.389107+00	
00000000-0000-0000-0000-000000000000	97467d26-fc5e-42bb-964d-a3c38ecccd09	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 18:40:19.002318+00	
00000000-0000-0000-0000-000000000000	ba6c5f6f-79ac-4552-87c6-32f500457e3b	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-06 18:44:02.718257+00	
00000000-0000-0000-0000-000000000000	fecba056-95aa-41e7-9399-2998abcfc161	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 19:29:14.984902+00	
00000000-0000-0000-0000-000000000000	6c85532b-5bf0-4007-8db8-8831bd6500e5	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 19:29:14.988719+00	
00000000-0000-0000-0000-000000000000	01e32977-677d-48aa-92ee-90b57baed140	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 19:47:33.830782+00	
00000000-0000-0000-0000-000000000000	fb53ad1d-edc8-4659-8f79-8dbd6a01284c	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 19:47:33.834158+00	
00000000-0000-0000-0000-000000000000	005e3d21-2f17-4295-ad9f-0b5225bef0c2	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 19:48:26.238671+00	
00000000-0000-0000-0000-000000000000	49218ed8-af9c-4bde-9913-d89fdb6359bf	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-06 19:48:26.239327+00	
00000000-0000-0000-0000-000000000000	643d1587-82cb-4a9d-ac81-423928b3614b	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-07 00:39:51.855139+00	
00000000-0000-0000-0000-000000000000	fe0d8700-023a-4965-bc3b-cea5b073801f	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 01:46:40.846444+00	
00000000-0000-0000-0000-000000000000	a3f28e1f-0f72-4261-bb20-594e9ce045ad	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 01:46:40.853897+00	
00000000-0000-0000-0000-000000000000	d8bce21d-456e-483a-bad0-a0540778ad0e	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 01:49:01.506697+00	
00000000-0000-0000-0000-000000000000	382b03a1-cfa2-4639-a0cb-212044683e1b	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 01:49:01.50939+00	
00000000-0000-0000-0000-000000000000	8cc7eeff-f56f-4618-aaef-0caece308b6c	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 01:51:19.479847+00	
00000000-0000-0000-0000-000000000000	2a46d807-0195-4538-ae4b-1a0933ff52a2	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 01:51:19.484049+00	
00000000-0000-0000-0000-000000000000	b6c58233-3111-4a1a-9236-be045511740e	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 02:06:18.546298+00	
00000000-0000-0000-0000-000000000000	1553734d-1520-4178-b925-a03b2db42d4b	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 02:06:18.549414+00	
00000000-0000-0000-0000-000000000000	b219e6ed-f6f7-44d9-9978-4c7ebb383a1d	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-07 02:29:46.742717+00	
00000000-0000-0000-0000-000000000000	04212ebb-41e0-41c0-af72-bc281376ae8f	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 02:51:55.784074+00	
00000000-0000-0000-0000-000000000000	b9f6df61-132c-4581-8022-1b984b967672	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 02:51:55.787497+00	
00000000-0000-0000-0000-000000000000	0e337e7f-a7d7-4607-b858-8671fc214ac4	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 03:19:28.690324+00	
00000000-0000-0000-0000-000000000000	6c85dacc-0e3a-4d3d-9003-e1445f7f70e6	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 03:19:28.692901+00	
00000000-0000-0000-0000-000000000000	4d585299-ab14-4bca-af99-91ea31d130f7	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 03:38:35.981971+00	
00000000-0000-0000-0000-000000000000	d62da400-3b7c-4bb2-9459-038cec6b58c9	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-07 03:38:35.984785+00	
00000000-0000-0000-0000-000000000000	d03e2834-880a-4acc-b635-569b84ae1c1c	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 16:42:59.944511+00	
00000000-0000-0000-0000-000000000000	a5d919c0-f42f-47ac-a2a9-51c8ec7c82c9	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 16:42:59.96441+00	
00000000-0000-0000-0000-000000000000	6d211b99-a668-4cf8-9e44-41a7a6a16b17	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 16:46:35.938485+00	
00000000-0000-0000-0000-000000000000	bdff1ec6-dad7-42bb-aa7a-79adea1ee403	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 16:46:35.942072+00	
00000000-0000-0000-0000-000000000000	e06f4bdf-dc1f-4881-a09d-c4f0a32cbcc8	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 17:45:05.432554+00	
00000000-0000-0000-0000-000000000000	3a9811e7-f336-439a-8f5e-a09028eeff86	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 17:45:05.436417+00	
00000000-0000-0000-0000-000000000000	2ad55eb7-ea36-4c3e-b025-4c0418db1b9d	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 17:46:46.504447+00	
00000000-0000-0000-0000-000000000000	005a632e-7def-4eda-aeef-4d7f94246ef3	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 17:46:46.508419+00	
00000000-0000-0000-0000-000000000000	f97f00ec-ba9d-4257-8072-d4c5917f41c2	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 18:05:07.708526+00	
00000000-0000-0000-0000-000000000000	a95552d9-571a-4db0-871b-2318247b826f	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 18:05:07.711857+00	
00000000-0000-0000-0000-000000000000	1283dec4-4c00-47bb-ad36-8f589cf9798e	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-08 18:30:37.881236+00	
00000000-0000-0000-0000-000000000000	70bfc011-ab80-46d5-a1bf-2631658d9ff0	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 18:47:23.839742+00	
00000000-0000-0000-0000-000000000000	06fa987c-e44a-47bc-8599-d367f7dc06e7	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 18:47:23.842558+00	
00000000-0000-0000-0000-000000000000	b2f33b3a-1e6c-4c64-b7d1-0ef8f15b1ee6	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 18:49:38.948107+00	
00000000-0000-0000-0000-000000000000	7fe6e919-0b1c-4bfa-910a-7a9079bde081	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 18:49:38.950339+00	
00000000-0000-0000-0000-000000000000	3cd4e7ef-c0cc-4a28-8fbf-91a9c954f62c	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 19:44:10.610064+00	
00000000-0000-0000-0000-000000000000	cc03989d-c0c3-4186-adbd-6f8bcb3a7215	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 19:44:10.617928+00	
00000000-0000-0000-0000-000000000000	6fb5a4d3-4701-491b-b2e3-771e9a6dc164	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 20:17:54.723268+00	
00000000-0000-0000-0000-000000000000	19828d84-acbb-47a5-be3a-07db82190ea6	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 20:17:54.724883+00	
00000000-0000-0000-0000-000000000000	485956df-33f3-4612-8082-f7b2ed47bd8a	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 21:54:20.227671+00	
00000000-0000-0000-0000-000000000000	6ecfd542-6a39-4342-ac85-52ccef21d437	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-08 21:54:20.231174+00	
00000000-0000-0000-0000-000000000000	d2e9d655-aa61-41ab-bde7-b58ecfbaff6a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-09 22:20:29.315326+00	
00000000-0000-0000-0000-000000000000	1f323450-e5c2-48fd-9819-dcf16e8a84a2	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-09 22:20:29.337069+00	
00000000-0000-0000-0000-000000000000	651e4401-f647-4a02-b6a9-80b8fc804757	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 02:39:11.965271+00	
00000000-0000-0000-0000-000000000000	6a10b915-2db1-46bb-a340-81c5605623e4	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 02:39:11.968618+00	
00000000-0000-0000-0000-000000000000	facf8917-7962-4ece-b4e0-611e40593311	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 16:50:11.273481+00	
00000000-0000-0000-0000-000000000000	22d2e3a0-06aa-40c2-b646-f2a60d8b2fc5	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 16:50:11.289504+00	
00000000-0000-0000-0000-000000000000	194bfe30-f1b9-4099-875f-d72cc0d1a811	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 16:51:14.89813+00	
00000000-0000-0000-0000-000000000000	9b995a6a-17ae-4f98-be0c-aa7eefc32292	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 16:51:14.899513+00	
00000000-0000-0000-0000-000000000000	686b04dc-45e4-47e6-8e38-d1cde2b5870f	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 17:00:46.191199+00	
00000000-0000-0000-0000-000000000000	fae03e51-7e96-47d1-b800-3f8c83724dd1	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 17:00:46.195608+00	
00000000-0000-0000-0000-000000000000	caa6c78d-cfcc-41b8-b4a3-28fbfb2f7509	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 18:01:19.422301+00	
00000000-0000-0000-0000-000000000000	d0196c58-14b1-4c54-aca1-f174ac339d41	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 18:01:19.426271+00	
00000000-0000-0000-0000-000000000000	56143970-c7ac-4c1a-af1c-c4204d018c5d	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 18:15:08.018011+00	
00000000-0000-0000-0000-000000000000	f8192192-7e09-48bb-90be-7719480ca4f3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 18:15:08.021429+00	
00000000-0000-0000-0000-000000000000	430c91c3-2d61-4318-aaf8-dd4e8671327e	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 18:22:03.839245+00	
00000000-0000-0000-0000-000000000000	5bc77cda-41cb-4d06-a09f-69c1f771255b	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 18:22:03.841945+00	
00000000-0000-0000-0000-000000000000	4938d122-f805-44ff-a912-c9a045a1a56c	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 19:32:16.018321+00	
00000000-0000-0000-0000-000000000000	2dcc950f-4168-429c-b831-9aeb844354e6	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 19:32:16.021942+00	
00000000-0000-0000-0000-000000000000	84dfb27f-3ee0-4842-ab6c-9f6a638a48a8	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 19:32:24.401929+00	
00000000-0000-0000-0000-000000000000	89ef71df-6350-4bff-b461-8a969a8bd5d3	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-10 19:32:24.403345+00	
00000000-0000-0000-0000-000000000000	761105c6-12df-47ba-b643-7b16cfe128ab	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 01:33:46.130522+00	
00000000-0000-0000-0000-000000000000	ff447429-f9a6-43e7-a481-ebaa0f772029	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 01:33:46.139193+00	
00000000-0000-0000-0000-000000000000	fc94cb7c-2a8a-4cef-a03a-eec0bfca9903	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 01:34:21.786652+00	
00000000-0000-0000-0000-000000000000	35d0cf09-8029-43ea-ae96-3f9c54e256d0	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 01:34:21.787331+00	
00000000-0000-0000-0000-000000000000	c7dd0341-59a1-46eb-896b-1b39c23629f9	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 02:31:37.595288+00	
00000000-0000-0000-0000-000000000000	a696556e-603c-4b54-a15a-c8177e99a007	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 02:31:37.598233+00	
00000000-0000-0000-0000-000000000000	5da62ead-020b-4a59-b52d-004a89093d26	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 02:33:28.487952+00	
00000000-0000-0000-0000-000000000000	57406f08-29c0-45c8-8b97-7db478c63475	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 03:15:35.089383+00	
00000000-0000-0000-0000-000000000000	e7d43fe1-6aa6-4c53-97ec-0fc6c50405cf	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 03:15:35.092402+00	
00000000-0000-0000-0000-000000000000	3603094f-dd91-4879-9374-97fd54efe755	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 03:29:22.031221+00	
00000000-0000-0000-0000-000000000000	3cb995cc-7ae3-49fc-9422-fcc4938403b8	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 03:29:22.034871+00	
00000000-0000-0000-0000-000000000000	cda63c16-7971-4d1e-a327-85f4465058ef	{"action":"logout","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account"}	2025-01-11 03:34:42.356738+00	
00000000-0000-0000-0000-000000000000	20f19ffa-cb04-4368-92df-06fc177549e6	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-11 03:35:44.282315+00	
00000000-0000-0000-0000-000000000000	39328610-aebc-4128-ab71-fced5a19e4f5	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 03:38:16.030101+00	
00000000-0000-0000-0000-000000000000	4ae9f9d8-d99d-4a3f-be57-cf5f43699607	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-11 03:38:16.030783+00	
00000000-0000-0000-0000-000000000000	b1739d70-3fe2-480c-a6ec-dd7dc8637c44	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-12 18:25:20.452369+00	
00000000-0000-0000-0000-000000000000	3e20eec5-1a92-4818-b965-2290f111e82d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-12 18:25:20.46648+00	
00000000-0000-0000-0000-000000000000	1b95287a-54f0-4ba9-b723-907981548663	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-12 19:46:21.893314+00	
00000000-0000-0000-0000-000000000000	6f19b40b-34c3-4164-bd6a-44624208dad1	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-12 19:46:21.896351+00	
00000000-0000-0000-0000-000000000000	6adaffb9-f0df-4d12-a79d-da5c7eaf5d68	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-13 11:33:21.748302+00	
00000000-0000-0000-0000-000000000000	4a1c7547-f674-45ca-b16c-82aa8a270043	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-13 11:33:21.76387+00	
00000000-0000-0000-0000-000000000000	46770d42-3e73-4824-9eb2-7904c4473094	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-14 02:30:51.063577+00	
00000000-0000-0000-0000-000000000000	db80005c-42b4-4114-8a72-407c050868ba	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-14 02:30:51.072731+00	
00000000-0000-0000-0000-000000000000	3888b8ee-4464-498d-b66d-8388d5677353	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-16 18:49:08.361066+00	
00000000-0000-0000-0000-000000000000	0943f644-918f-4344-8461-3e07c5954ada	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-16 18:49:08.377759+00	
00000000-0000-0000-0000-000000000000	12dce6ba-a7f5-470d-b5bf-a578b0bbd357	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 17:44:46.9791+00	
00000000-0000-0000-0000-000000000000	cd9c7768-a7a3-404f-8a3a-1e3aa07ba2f5	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 17:44:46.991641+00	
00000000-0000-0000-0000-000000000000	5790380c-aa71-4679-98a2-041cd110e2e4	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 17:50:36.605819+00	
00000000-0000-0000-0000-000000000000	bb2f1a11-cd44-43ec-a27d-3b3b7e5948f7	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 17:50:36.609011+00	
00000000-0000-0000-0000-000000000000	0eacb44d-577b-44b8-8a58-ba1c32562ccf	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 18:02:46.116268+00	
00000000-0000-0000-0000-000000000000	192fb27a-1865-4109-85c5-4590da72da32	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 18:02:46.118674+00	
00000000-0000-0000-0000-000000000000	135cde58-d266-4e02-83aa-e7b1d5dc22c0	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 18:13:32.960767+00	
00000000-0000-0000-0000-000000000000	e9f9bf0c-6900-4fc7-a773-dc52740f3a65	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 18:13:32.962412+00	
00000000-0000-0000-0000-000000000000	768dec38-44ba-458a-a259-f67ae31a16f2	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 19:35:22.823422+00	
00000000-0000-0000-0000-000000000000	a435dc0e-79c7-4b90-926c-c9fe365843dd	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-18 19:35:22.828543+00	
00000000-0000-0000-0000-000000000000	955a6591-2170-4982-ae53-42ba54909a8f	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-20 15:15:43.126092+00	
00000000-0000-0000-0000-000000000000	539d466d-aabe-41e7-8ac8-086df25c8dc4	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 18:57:00.454909+00	
00000000-0000-0000-0000-000000000000	c1defdd8-fd36-4938-8872-a1ed35ea174b	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 18:57:00.463205+00	
00000000-0000-0000-0000-000000000000	fb6c2d53-3455-4a0b-97ad-49054ff1ce04	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 19:03:49.044874+00	
00000000-0000-0000-0000-000000000000	d53aac71-7f9f-4050-98de-54f2d0af615e	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 19:03:49.048842+00	
00000000-0000-0000-0000-000000000000	ef093dd1-1950-40f8-b96d-d0ec1cee631f	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 19:25:31.747874+00	
00000000-0000-0000-0000-000000000000	718aedce-f76f-4bf4-bcb2-778a3353d742	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 19:25:31.751157+00	
00000000-0000-0000-0000-000000000000	a8ff9cfc-c549-474c-94a9-4d808020b005	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 20:03:56.723509+00	
00000000-0000-0000-0000-000000000000	77a93daf-b023-46d8-9d72-e856ad909754	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 20:03:56.727509+00	
00000000-0000-0000-0000-000000000000	27187fe9-13b6-4741-98bc-92a698151c8d	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 20:28:00.478696+00	
00000000-0000-0000-0000-000000000000	396fb833-89d6-4b36-b41f-df881e8fb71b	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 20:28:00.48355+00	
00000000-0000-0000-0000-000000000000	991607f1-cba9-4b9c-9ce0-d786d9fa3521	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 22:19:23.512353+00	
00000000-0000-0000-0000-000000000000	d60411e2-acfc-4a3d-b4e3-3f1feb715f95	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 22:19:23.517351+00	
00000000-0000-0000-0000-000000000000	41ce3a3d-a1aa-4995-b7e4-7896a022eaac	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 23:17:52.901584+00	
00000000-0000-0000-0000-000000000000	2574f989-c398-46a1-8ef9-4c09d0169da5	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-20 23:17:52.904179+00	
00000000-0000-0000-0000-000000000000	966a2b07-c38d-4dff-867a-36b3e0471229	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 00:15:53.033622+00	
00000000-0000-0000-0000-000000000000	4fc3fbd9-3205-4511-90ea-c2955fd43af9	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 00:15:53.037341+00	
00000000-0000-0000-0000-000000000000	8088998b-fb55-4745-a4f5-b66ae4ce410e	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 01:14:22.98319+00	
00000000-0000-0000-0000-000000000000	e4ec6906-f1aa-4147-85da-3f593a8fa836	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 01:14:22.985826+00	
00000000-0000-0000-0000-000000000000	d2e3436b-882e-46ae-ab8e-5fc703189ef2	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 02:12:23.204539+00	
00000000-0000-0000-0000-000000000000	dfd01e3a-bdea-4130-bf24-95a1a3e8d818	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 02:12:23.207066+00	
00000000-0000-0000-0000-000000000000	cab4940b-3322-46d7-98e0-bba7b98eeb71	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 03:10:53.100699+00	
00000000-0000-0000-0000-000000000000	f9ef1eeb-502d-4a98-a7a9-02c78653b50a	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 03:10:53.10335+00	
00000000-0000-0000-0000-000000000000	3e34b5b3-217a-497d-bfdb-241034a8c87d	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 04:09:23.169127+00	
00000000-0000-0000-0000-000000000000	e04d7e94-f889-4b9a-b192-4042ef25290e	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 04:09:23.17123+00	
00000000-0000-0000-0000-000000000000	2a75b3fa-72e8-421c-919a-8ee185596f82	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 05:07:53.143702+00	
00000000-0000-0000-0000-000000000000	639d7095-4eef-47f8-8513-92c79fbcd1f7	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 05:07:53.145902+00	
00000000-0000-0000-0000-000000000000	55059d21-8b8c-41b1-a16a-91e6525452a0	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 06:06:23.536838+00	
00000000-0000-0000-0000-000000000000	c1dddbcd-ec94-4344-bb7f-9de35dde9d6d	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 06:06:23.546845+00	
00000000-0000-0000-0000-000000000000	4dc4f663-32f8-4337-910a-1add7c06d6d0	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 07:04:53.451049+00	
00000000-0000-0000-0000-000000000000	625b89d5-508f-4aec-80b6-14c8fc6f0111	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 07:04:53.460693+00	
00000000-0000-0000-0000-000000000000	0b364953-1db7-4edf-917a-39335978aef0	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 08:03:23.4166+00	
00000000-0000-0000-0000-000000000000	2c0f16c3-b198-42f3-85ce-ccfb961de5e3	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 08:03:23.419534+00	
00000000-0000-0000-0000-000000000000	a916928a-0701-441d-83ab-823707bf29a8	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 09:01:53.386361+00	
00000000-0000-0000-0000-000000000000	6496ad73-d4fa-46ec-a784-9b8c0c0926ae	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 09:01:53.389133+00	
00000000-0000-0000-0000-000000000000	b41244c2-4faf-410e-b6c4-02bbab0ce34d	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 11:20:57.207179+00	
00000000-0000-0000-0000-000000000000	63155b41-0c26-4250-ba85-43c3320b7d3e	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 11:20:57.212536+00	
00000000-0000-0000-0000-000000000000	0a43e042-15cb-4230-9438-669d0a4029ac	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 19:18:45.528042+00	
00000000-0000-0000-0000-000000000000	49468b85-6074-4689-b18e-067f7ebdb866	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 19:18:45.536208+00	
00000000-0000-0000-0000-000000000000	47b4d18a-4563-4f83-850c-753b59652150	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 19:19:04.74792+00	
00000000-0000-0000-0000-000000000000	308f6638-59ae-40c3-8c90-30fceccb8dcb	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 19:19:04.751201+00	
00000000-0000-0000-0000-000000000000	284c146d-77ac-4bac-be83-029f405ab61a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 19:20:24.161365+00	
00000000-0000-0000-0000-000000000000	75ea0c96-280f-453e-96c7-87c9a49cbf1f	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 19:20:24.16204+00	
00000000-0000-0000-0000-000000000000	e2db7da0-d82c-46ce-847b-8a518b155a41	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-21 19:22:02.459345+00	
00000000-0000-0000-0000-000000000000	be8d4c35-1696-4dbf-8108-bde625f36b54	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-21 20:14:56.594417+00	
00000000-0000-0000-0000-000000000000	d2052c64-590c-4748-a90d-d9ab450d42fe	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 20:35:03.748422+00	
00000000-0000-0000-0000-000000000000	694e6b9c-8247-48f4-b37f-0de264144692	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-21 20:35:03.754769+00	
00000000-0000-0000-0000-000000000000	987861b3-f890-4b75-8b68-34190515aebf	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-21 20:37:47.012074+00	
00000000-0000-0000-0000-000000000000	4b72bec3-ba9e-4383-93a4-275a649c2d37	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-21 20:39:12.129044+00	
00000000-0000-0000-0000-000000000000	054b9f76-48cc-436d-89fa-ad477911a7a8	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-22 10:24:45.756832+00	
00000000-0000-0000-0000-000000000000	3a16c101-2f73-4379-8398-55d67b672ac0	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 17:38:08.915032+00	
00000000-0000-0000-0000-000000000000	a80df056-ae35-4232-abbe-d7707a868390	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 17:38:08.928485+00	
00000000-0000-0000-0000-000000000000	67f784ba-66e6-471e-b3f4-d7284c56b932	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 17:41:17.071782+00	
00000000-0000-0000-0000-000000000000	3bc66fb9-975b-4fd2-8489-9fb53eca518c	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 17:41:17.075436+00	
00000000-0000-0000-0000-000000000000	870fcedc-22fa-4cf6-8ebe-544e1e2c70aa	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 18:00:21.467512+00	
00000000-0000-0000-0000-000000000000	6c118923-2f36-4690-966d-8ccb73bcadfb	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-26 18:00:21.470017+00	
00000000-0000-0000-0000-000000000000	2d5a49c4-e3d6-493f-a2c5-1b5fc5b30950	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 21:26:52.091049+00	
00000000-0000-0000-0000-000000000000	1ab67a31-ffc3-41b2-b20c-c90c4a3007ab	{"action":"login","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-26 21:49:53.604517+00	
00000000-0000-0000-0000-000000000000	325bf767-d2d1-44cb-aa1b-0fbab0239275	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 21:59:30.183351+00	
00000000-0000-0000-0000-000000000000	b6cf50d9-7991-4610-a195-e6fc363d03f1	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 21:59:30.205024+00	
00000000-0000-0000-0000-000000000000	c2511464-dfe8-49d3-bdb4-bfd52beb9bc7	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 22:29:37.378607+00	
00000000-0000-0000-0000-000000000000	2b8d27ce-0abc-41bc-aae8-23402f8bfa7f	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 22:29:37.381681+00	
00000000-0000-0000-0000-000000000000	d2f674c0-5830-46e3-9dad-9cbd2fdaeca2	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 23:13:44.202504+00	
00000000-0000-0000-0000-000000000000	82afb993-05ba-42a0-80ed-4599f5898ae2	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-27 23:13:44.206009+00	
00000000-0000-0000-0000-000000000000	c820ff03-77a1-47f9-b0b4-c48fb8a4a26a	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-28 13:46:03.260472+00	
00000000-0000-0000-0000-000000000000	e6523143-fce1-4e51-98d3-dfb8654416eb	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-28 13:46:03.275303+00	
00000000-0000-0000-0000-000000000000	4354ba8a-27aa-43f5-bbb7-0469694b164d	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-28 15:00:32.813459+00	
00000000-0000-0000-0000-000000000000	c2f5ad26-3a90-4caf-8ccd-599cb6fde1a8	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-28 15:00:32.824207+00	
00000000-0000-0000-0000-000000000000	51e4b04a-af9d-4fc4-b7bb-c2bc9487aafe	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-30 10:52:53.032922+00	
00000000-0000-0000-0000-000000000000	91f02e63-d699-4374-bcfe-da1659498237	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-30 10:52:53.063044+00	
00000000-0000-0000-0000-000000000000	1739ef02-5266-4d2d-b157-29883c8050a9	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-30 12:00:13.7965+00	
00000000-0000-0000-0000-000000000000	b15cf5fb-7895-481d-b0d3-15f268058984	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-30 12:00:13.802922+00	
00000000-0000-0000-0000-000000000000	44efd109-3015-415c-b639-6f6375c0ea66	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-31 11:47:19.187273+00	
00000000-0000-0000-0000-000000000000	c94ccb6a-ac76-4271-b363-34a4679d902f	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 12:45:33.365716+00	
00000000-0000-0000-0000-000000000000	b000d121-416b-4b81-b012-78100c6b464b	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 12:45:33.369936+00	
00000000-0000-0000-0000-000000000000	f51eba35-072d-4824-a1ac-baca008d1d55	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 14:20:09.84272+00	
00000000-0000-0000-0000-000000000000	fe70b419-b116-441f-a263-bbf5203dfa5f	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 14:20:09.846242+00	
00000000-0000-0000-0000-000000000000	8d30c4e6-9d35-4d2c-bf60-de376a50d8f8	{"action":"user_repeated_signup","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-01-31 14:22:46.749974+00	
00000000-0000-0000-0000-000000000000	6cc6f5ae-a854-4f73-8ae9-6fa384684995	{"action":"user_repeated_signup","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-01-31 14:22:52.554612+00	
00000000-0000-0000-0000-000000000000	ebf09e01-ab80-42d6-8f1e-969f735b90f3	{"action":"user_repeated_signup","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-01-31 14:23:26.625996+00	
00000000-0000-0000-0000-000000000000	8a515f28-75d9-4c6e-99a0-4c2c3d119829	{"action":"user_signedup","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-01-31 14:23:33.359946+00	
00000000-0000-0000-0000-000000000000	6e863a86-1150-4bbf-a443-c4b38c6d9caa	{"action":"login","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-31 14:23:33.364486+00	
00000000-0000-0000-0000-000000000000	dff19079-2c9a-4377-82ed-84246d99613f	{"action":"login","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-01-31 14:24:02.955168+00	
00000000-0000-0000-0000-000000000000	831105e3-3bf9-49a5-8c14-edf391a0ec47	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 17:29:50.709558+00	
00000000-0000-0000-0000-000000000000	b849c9f1-c6bb-4980-a21d-9e5ed89c98be	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 17:29:50.712805+00	
00000000-0000-0000-0000-000000000000	9a810271-b43c-44f8-8462-560a510cc210	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 17:40:01.355132+00	
00000000-0000-0000-0000-000000000000	990db386-5576-4c16-9aae-cf13a1c56ce0	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 17:40:01.358434+00	
00000000-0000-0000-0000-000000000000	b690f7e6-1979-4fc0-aa84-7b2da6a9bcb6	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 18:29:56.935357+00	
00000000-0000-0000-0000-000000000000	2db11078-65bc-4fc2-b53d-87228a09df9a	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 18:29:56.939166+00	
00000000-0000-0000-0000-000000000000	97dbcd74-3f34-4d37-92bd-101e79691f96	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 18:58:27.353272+00	
00000000-0000-0000-0000-000000000000	86396504-840d-4a29-a674-b65052b2eea1	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 18:58:27.357087+00	
00000000-0000-0000-0000-000000000000	d36c2c03-f353-4e89-bdcd-9b63de6c44a8	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 22:37:48.414967+00	
00000000-0000-0000-0000-000000000000	64501f5c-4421-4e4e-8f15-ecc2e026b503	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 22:37:48.434458+00	
00000000-0000-0000-0000-000000000000	20f982b3-b334-4aa0-9e4b-c7c2a3527aff	{"action":"logout","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account"}	2025-01-31 22:38:00.732334+00	
00000000-0000-0000-0000-000000000000	330062eb-393a-4968-bfc9-c8e26ceda78c	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 23:48:59.854273+00	
00000000-0000-0000-0000-000000000000	c23902d4-722f-47c7-b734-e85c53d815c2	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 23:48:59.855219+00	
00000000-0000-0000-0000-000000000000	865e5462-6bd7-4ad9-83f6-feefd52974bc	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 23:56:33.362559+00	
00000000-0000-0000-0000-000000000000	7b313f12-f407-4451-9470-0acd910ab06a	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 23:56:33.364101+00	
00000000-0000-0000-0000-000000000000	40650738-ea46-4d62-9cdd-dec885eeb65a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 23:58:10.031562+00	
00000000-0000-0000-0000-000000000000	f4b6229e-4947-4838-aeb7-7bd8945f32cc	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-01-31 23:58:10.033625+00	
00000000-0000-0000-0000-000000000000	42db7c84-5866-4829-ac31-977a7384317b	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 00:59:27.095045+00	
00000000-0000-0000-0000-000000000000	d173b797-c64a-4391-9b69-16b8707833ea	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 00:59:27.098583+00	
00000000-0000-0000-0000-000000000000	4dfd9869-a614-4943-820b-461ae078a8ad	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 01:01:15.200067+00	
00000000-0000-0000-0000-000000000000	26aa7cac-e1b6-42df-877c-41750d05d4a3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 01:01:15.202705+00	
00000000-0000-0000-0000-000000000000	b0e6c68c-613e-4ff0-82fc-65c18a87c110	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 02:00:05.2225+00	
00000000-0000-0000-0000-000000000000	4082c574-43c4-4213-b71e-1b403f5770a3	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 02:00:05.231536+00	
00000000-0000-0000-0000-000000000000	4972c620-b658-40c3-95a7-3f15f0cc7fb6	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 02:18:03.774099+00	
00000000-0000-0000-0000-000000000000	2ff62a2f-9417-498c-a4e7-be3c5682f920	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 02:18:03.777886+00	
00000000-0000-0000-0000-000000000000	6a276180-724e-4a29-9c52-64b42c18cf97	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 15:19:15.730523+00	
00000000-0000-0000-0000-000000000000	e34f488c-20e8-49d2-a9e5-16a30d62a387	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 15:19:15.743825+00	
00000000-0000-0000-0000-000000000000	e14159d1-3e42-4ff8-a43b-4dd860549eba	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 15:26:21.553724+00	
00000000-0000-0000-0000-000000000000	bfd3ec8e-8af2-47a5-aa03-b38611e3297d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 15:26:21.556208+00	
00000000-0000-0000-0000-000000000000	27f12e7f-dc1b-48d8-b331-79ed3343724b	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 15:47:30.005254+00	
00000000-0000-0000-0000-000000000000	0bb29da3-9b58-4173-891f-7dcba0de4bdb	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 15:47:30.006395+00	
00000000-0000-0000-0000-000000000000	f1527d16-af2e-4e46-9919-3143034e7f03	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 16:32:44.85859+00	
00000000-0000-0000-0000-000000000000	9ee0c514-016a-424e-b3dd-38626e6561a3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 16:32:44.861748+00	
00000000-0000-0000-0000-000000000000	8e66cdc4-d0ca-48cc-ac5e-bb53f577f64c	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 16:48:31.367264+00	
00000000-0000-0000-0000-000000000000	ccac84f0-883a-48c0-9eea-bd166398d909	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 16:48:31.368205+00	
00000000-0000-0000-0000-000000000000	755d5686-4cb2-4cdb-81e6-a9a40b5dd68b	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 17:46:33.822057+00	
00000000-0000-0000-0000-000000000000	1a27a24a-1cd6-4456-b6b3-a6e054cf6db6	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 17:46:33.826773+00	
00000000-0000-0000-0000-000000000000	53d4adad-208f-4423-bb9b-17894638b2a6	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 17:56:51.122421+00	
00000000-0000-0000-0000-000000000000	7d6b0063-ab94-4abc-85cd-37b73cb25d4e	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 17:56:51.125752+00	
00000000-0000-0000-0000-000000000000	ef92ad33-8d51-4e09-886c-f5fa1f12c3b9	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 18:09:07.289686+00	
00000000-0000-0000-0000-000000000000	a86642ce-f8d9-400f-8074-2b503686c42d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 18:09:07.293136+00	
00000000-0000-0000-0000-000000000000	31206b75-f922-4ec7-a6ed-4e7ba52afd41	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 18:58:06.847578+00	
00000000-0000-0000-0000-000000000000	4bb38793-24be-49fe-b6fa-7dd6697326ab	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 18:58:06.852368+00	
00000000-0000-0000-0000-000000000000	c61f9424-dbbb-4362-bc53-9b2aab85cc1f	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 19:09:32.832369+00	
00000000-0000-0000-0000-000000000000	f3cedf8d-6bda-47d2-83f5-120e1a2c51dd	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 19:09:32.837297+00	
00000000-0000-0000-0000-000000000000	92880361-7071-484f-a393-a2f18f9f73ad	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 22:07:32.190133+00	
00000000-0000-0000-0000-000000000000	a5b3da45-3bc0-4286-839d-ff488c3cf26f	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 22:07:32.193438+00	
00000000-0000-0000-0000-000000000000	c3e8ace7-e650-48a8-8684-602a5fa5aff9	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 22:09:08.533902+00	
00000000-0000-0000-0000-000000000000	0a0e484e-91a3-4875-9120-a58fd53588ca	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 22:09:08.535371+00	
00000000-0000-0000-0000-000000000000	5aa03842-4f2a-40c9-a4d1-e08ae777428d	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 22:15:22.497175+00	
00000000-0000-0000-0000-000000000000	a4071ca8-2fc4-4792-a003-c528e2ab54bc	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-01 22:15:22.502896+00	
00000000-0000-0000-0000-000000000000	b461a99d-9dc7-4bc1-9dc5-d76a4dfa5915	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 15:23:53.283802+00	
00000000-0000-0000-0000-000000000000	0c7b42e3-0fd8-4eed-99ae-19dc4c87b09d	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 15:23:53.302705+00	
00000000-0000-0000-0000-000000000000	78db6dca-c5ef-4ade-a0e9-91c312848c87	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 15:36:35.488634+00	
00000000-0000-0000-0000-000000000000	e5ba0afc-df7f-489b-b23e-84a71957ea3e	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 15:36:35.493705+00	
00000000-0000-0000-0000-000000000000	4d9779f5-5a9a-479c-92a8-970edddbd9aa	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 15:46:15.014378+00	
00000000-0000-0000-0000-000000000000	a8cd553f-3a49-4ef7-9b1a-39496a870600	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 15:46:15.019853+00	
00000000-0000-0000-0000-000000000000	88f71aea-79bf-4d11-9586-6af6198fd8c9	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 16:36:33.132465+00	
00000000-0000-0000-0000-000000000000	feae0d01-7ef8-4732-a285-337b34434194	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 16:36:33.138159+00	
00000000-0000-0000-0000-000000000000	d9ae6ed8-67fe-4a67-8fb9-f56815985b0f	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 16:48:33.118474+00	
00000000-0000-0000-0000-000000000000	d8ae9a8a-9ad8-4bb0-986f-2a9125284614	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 16:48:33.125644+00	
00000000-0000-0000-0000-000000000000	05056b6c-d69b-4bd9-bf8c-a4683b1834a5	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 16:54:00.023526+00	
00000000-0000-0000-0000-000000000000	bdc672f6-ae3b-4b06-bc78-7cd108145850	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 16:54:00.034696+00	
00000000-0000-0000-0000-000000000000	c04e9ad4-cf3c-4c23-83e1-5ffa0fecf38f	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 17:34:46.240376+00	
00000000-0000-0000-0000-000000000000	891a97d0-8318-4b1f-8dc3-9a9b3ec6ebbc	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 17:34:46.249128+00	
00000000-0000-0000-0000-000000000000	01ec764d-b113-4cc2-94ae-0c41d2e0a872	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 17:45:41.219296+00	
00000000-0000-0000-0000-000000000000	289d1482-502d-4162-9317-58b9f8dcd399	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 17:45:41.222255+00	
00000000-0000-0000-0000-000000000000	3eaa34e0-5d11-4521-8ea9-651d09ff2fb0	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 17:59:56.090677+00	
00000000-0000-0000-0000-000000000000	ae814b6a-06f1-40f0-8647-bc7df5d780cc	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 17:59:56.093646+00	
00000000-0000-0000-0000-000000000000	653e068a-172e-448a-9601-7670f1177019	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 18:39:16.668943+00	
00000000-0000-0000-0000-000000000000	7061953a-1655-4b27-83a9-fe03039f94c6	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 18:39:16.671783+00	
00000000-0000-0000-0000-000000000000	b38f2c31-2749-4a56-8936-cf2a2db28a35	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 18:44:14.222885+00	
00000000-0000-0000-0000-000000000000	53552785-60fb-4e5b-99b2-b51424407d37	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 18:44:14.227097+00	
00000000-0000-0000-0000-000000000000	a92f8989-75a7-4673-bbd8-0272bb39245d	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 18:53:10.671186+00	
00000000-0000-0000-0000-000000000000	aee866d9-ac52-42ba-a3f1-92ca172b5c4c	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 18:53:10.67481+00	
00000000-0000-0000-0000-000000000000	97e8470f-3ad9-4ccd-82ad-58a4ff3df85a	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 19:01:22.458629+00	
00000000-0000-0000-0000-000000000000	fa6ca9c3-212d-4322-a85f-93e2b59de9d3	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 19:01:22.461259+00	
00000000-0000-0000-0000-000000000000	3680c09d-bd70-4675-8a99-fb3423bf76a1	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 21:11:34.742473+00	
00000000-0000-0000-0000-000000000000	ea395a30-9b59-46e4-a17a-4a304cb6abc0	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 21:11:34.746257+00	
00000000-0000-0000-0000-000000000000	12ca6ee6-85e7-4e90-bd75-e0efee66e662	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 21:25:54.312387+00	
00000000-0000-0000-0000-000000000000	829183d2-c284-41c5-9132-364ea647b996	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 21:25:54.315595+00	
00000000-0000-0000-0000-000000000000	abf24e4c-2cfc-4a76-96b9-386d6d0c71a7	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 21:44:55.976363+00	
00000000-0000-0000-0000-000000000000	0dc933bc-d98d-41d3-bbe3-e0002179fbb5	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 21:44:55.979919+00	
00000000-0000-0000-0000-000000000000	54d9a53e-6655-498d-857b-5542dfb3f1df	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 22:28:09.02024+00	
00000000-0000-0000-0000-000000000000	c5deece9-f325-4cdc-8dbf-39132bc218c3	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-02 22:28:09.025457+00	
00000000-0000-0000-0000-000000000000	efc3ced6-8540-455d-8b32-3ba89fb268e2	{"action":"token_refreshed","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 14:10:49.199749+00	
00000000-0000-0000-0000-000000000000	a4824f65-921e-4da8-bca4-2be5b202a064	{"action":"token_revoked","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 14:10:49.218723+00	
00000000-0000-0000-0000-000000000000	eaf6ce62-5afa-4f92-8229-e4d4d10ffdd1	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 14:13:22.654106+00	
00000000-0000-0000-0000-000000000000	a340fc36-4680-43e9-818c-d47701574a70	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-02-03 14:13:47.041676+00	
00000000-0000-0000-0000-000000000000	173b52e3-9ac8-424a-b4b5-4728b76b1f75	{"action":"login","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 14:17:04.652901+00	
00000000-0000-0000-0000-000000000000	838a72c5-f157-4bbf-800d-6fd947893517	{"action":"logout","actor_id":"576c76fb-b2e9-4a4e-94fc-810288687cec","actor_username":"yomix90@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-02-03 14:17:41.721633+00	
00000000-0000-0000-0000-000000000000	a7f4e477-8b37-4c73-8d6e-fd40946cc332	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 14:19:05.910461+00	
00000000-0000-0000-0000-000000000000	0a1b3952-f8c8-4c12-8856-2bb392b89cb1	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 14:29:46.064084+00	
00000000-0000-0000-0000-000000000000	7e06eff9-3a09-418b-b9f1-ed5a0a4440dc	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 14:31:47.276619+00	
00000000-0000-0000-0000-000000000000	11666747-56fb-4aee-8f7e-b742645de98c	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-03 14:48:49.776381+00	
00000000-0000-0000-0000-000000000000	9081d1f1-214c-4b4d-a2ea-8385011004a1	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 15:30:08.340772+00	
00000000-0000-0000-0000-000000000000	3c12e655-bfdc-4bc0-ae87-62b40a015aa3	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 15:30:08.349798+00	
00000000-0000-0000-0000-000000000000	3cf2fe27-72a3-4e28-98f1-94c30e44efbc	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 16:25:39.239012+00	
00000000-0000-0000-0000-000000000000	2629aa1f-e656-4765-abe3-684b7fd293f7	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 16:25:39.242341+00	
00000000-0000-0000-0000-000000000000	eb3d2454-227a-4746-8e28-055d9996b51b	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 16:28:38.123328+00	
00000000-0000-0000-0000-000000000000	c7918b9e-74d6-48db-aad0-304c2a236162	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 16:28:38.125867+00	
00000000-0000-0000-0000-000000000000	06d746e0-5b50-4bfc-9e00-a4b1b61a412b	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 17:27:08.318573+00	
00000000-0000-0000-0000-000000000000	a99f1c5e-f22a-4b61-b1b4-18fbe4666d9f	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 17:27:08.322921+00	
00000000-0000-0000-0000-000000000000	05f62755-8f53-4439-8448-e60b42fb8ac1	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 18:25:38.298068+00	
00000000-0000-0000-0000-000000000000	4640e1c5-f405-47d9-89c0-19c8ab373cab	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 18:25:38.301277+00	
00000000-0000-0000-0000-000000000000	d8907301-aeee-4b3d-a8a6-8e544dae562a	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 18:56:18.02415+00	
00000000-0000-0000-0000-000000000000	cfd1cd21-567c-446a-b1be-10d8dc4b3953	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 18:56:18.027591+00	
00000000-0000-0000-0000-000000000000	b1926980-c5d2-443c-adc3-807e9e5e1f37	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 19:24:08.394027+00	
00000000-0000-0000-0000-000000000000	2f9a7d30-80cf-4dd1-bbeb-2709819ab341	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 19:24:08.397331+00	
00000000-0000-0000-0000-000000000000	1c01a12a-5759-4b46-ac85-1cf1948c04a8	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 20:22:38.480439+00	
00000000-0000-0000-0000-000000000000	32723662-16a4-4e71-aac0-24904d320050	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 20:22:38.484239+00	
00000000-0000-0000-0000-000000000000	b7ca460c-6cae-4b31-8507-acef93a1714c	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 21:21:08.520028+00	
00000000-0000-0000-0000-000000000000	2607bec4-4213-4b6f-8edc-f675efb56cca	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 21:21:08.523052+00	
00000000-0000-0000-0000-000000000000	070ad30d-3e24-4675-84cd-7a8073c36131	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 22:19:38.599099+00	
00000000-0000-0000-0000-000000000000	09f05d80-2ed3-4a51-bafa-ae08341a8011	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 22:19:38.602527+00	
00000000-0000-0000-0000-000000000000	79b66861-41bc-44fb-85f8-6008681b64b0	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 23:18:08.65023+00	
00000000-0000-0000-0000-000000000000	fae6e68d-9656-487c-8a23-c71983cd0649	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-03 23:18:08.654213+00	
00000000-0000-0000-0000-000000000000	6264a06b-a454-44fb-9843-c983c88ca4f0	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 00:16:38.647238+00	
00000000-0000-0000-0000-000000000000	0a165643-e158-4f1d-9289-9f4e42cff81a	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 00:16:38.650595+00	
00000000-0000-0000-0000-000000000000	3060c93f-1be4-4f11-937a-96961d72aae2	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 01:14:38.733883+00	
00000000-0000-0000-0000-000000000000	c6c5cf6e-976c-4ff3-961c-82a431985925	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 01:14:38.736368+00	
00000000-0000-0000-0000-000000000000	d3ee8044-f99a-4bc3-a78c-84ecdbc6e02a	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 02:12:38.710311+00	
00000000-0000-0000-0000-000000000000	26f9502f-db76-44b7-90ae-bcc982ec2252	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 02:12:38.714059+00	
00000000-0000-0000-0000-000000000000	3fed2dc8-874d-420d-b95c-6c8e3523efef	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 03:10:38.781671+00	
00000000-0000-0000-0000-000000000000	9b28d57a-7d9a-4261-90a5-7486b60d1b2f	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 03:10:38.784262+00	
00000000-0000-0000-0000-000000000000	c62c423b-09df-407a-aa79-96a31b8b1d91	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 04:08:38.826669+00	
00000000-0000-0000-0000-000000000000	9d3f0f7f-4070-495e-a9cb-342b1a094b2b	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 04:08:38.82894+00	
00000000-0000-0000-0000-000000000000	ee24608c-476d-4cb9-95df-7612d7dbcf6e	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 05:06:38.874309+00	
00000000-0000-0000-0000-000000000000	87683d97-2d10-4ee8-9d32-5b22cc47778c	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 05:06:38.875951+00	
00000000-0000-0000-0000-000000000000	22969239-c9b2-4c22-bd00-365287894350	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 06:04:38.892223+00	
00000000-0000-0000-0000-000000000000	dc194e3f-e4a4-48a6-8e3d-30c0742a1aa8	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 06:04:38.894243+00	
00000000-0000-0000-0000-000000000000	d0384c82-3213-4db7-b08f-4821d146960d	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 07:02:39.104675+00	
00000000-0000-0000-0000-000000000000	5ef3a966-262c-462a-a6ff-d2599d475c9e	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 07:02:39.109544+00	
00000000-0000-0000-0000-000000000000	9ef2909a-03f8-40cc-a106-cf85196659e8	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 07:26:03.646089+00	
00000000-0000-0000-0000-000000000000	9bcebe62-3796-4f2e-ae81-4f90063fef15	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 07:26:03.654747+00	
00000000-0000-0000-0000-000000000000	392c1695-dd06-4e9a-abb8-5d1d4cdfb939	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 07:56:29.99257+00	
00000000-0000-0000-0000-000000000000	05005abd-bb53-413c-a95c-e43bd2153d4d	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 07:56:29.996836+00	
00000000-0000-0000-0000-000000000000	f345f16b-9859-45cb-9114-b501d3d9106f	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:01:08.824925+00	
00000000-0000-0000-0000-000000000000	abd07345-5e21-451f-ae0b-60de5b0100ea	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:01:08.827845+00	
00000000-0000-0000-0000-000000000000	d9af3b47-635d-4a8f-abd6-36002563f161	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:56:08.490517+00	
00000000-0000-0000-0000-000000000000	a9542b48-53c2-44d6-8401-cb5ae4eb8041	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:56:08.49377+00	
00000000-0000-0000-0000-000000000000	6826effa-7c6f-46ad-bdeb-3ed99433baca	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:56:31.042601+00	
00000000-0000-0000-0000-000000000000	21beffee-a4e4-4555-bb82-63c6ada73e9a	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:56:31.04501+00	
00000000-0000-0000-0000-000000000000	b7d90c65-5a58-4fc6-b851-db6c2dff716c	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:59:08.89324+00	
00000000-0000-0000-0000-000000000000	f6a4920f-29d0-4403-88a1-306ba9e9ab6e	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 08:59:08.895649+00	
00000000-0000-0000-0000-000000000000	20a89ad1-40e2-4522-956b-0ecfceb525c9	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 09:56:13.409381+00	
00000000-0000-0000-0000-000000000000	519a8c10-8a30-4bb1-83ef-4845448f73d2	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 09:56:13.412889+00	
00000000-0000-0000-0000-000000000000	300744a7-71c3-457e-9cab-1ce3077df9f4	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 09:56:36.282685+00	
00000000-0000-0000-0000-000000000000	b30750ce-32d4-4d5c-952a-d7ff2da93162	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 09:56:36.285046+00	
00000000-0000-0000-0000-000000000000	ae9cb66e-7a11-4ec2-b113-1b4e3b2ccb0f	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 11:57:22.335321+00	
00000000-0000-0000-0000-000000000000	7cd55cb7-2362-4da0-98c9-102d3ea5c2a1	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 11:57:22.339249+00	
00000000-0000-0000-0000-000000000000	f51ba885-f3d4-422c-a8c3-dd851089daf4	{"action":"token_refreshed","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 12:19:44.186067+00	
00000000-0000-0000-0000-000000000000	4a754f4b-c0be-4488-9519-51d9a7a7dc43	{"action":"token_revoked","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 12:19:44.189583+00	
00000000-0000-0000-0000-000000000000	1e0c7620-5ad4-48d8-9d73-891a8dd6bce0	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 14:11:03.932925+00	
00000000-0000-0000-0000-000000000000	58707bfc-0dff-43b3-800d-52bd4871d4ac	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 14:11:03.935179+00	
00000000-0000-0000-0000-000000000000	84515f5d-cbbb-4fa2-8168-b6dfc7e2c47a	{"action":"token_refreshed","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 14:22:15.194572+00	
00000000-0000-0000-0000-000000000000	b9dc636f-927a-44fc-96df-7533eef7d46c	{"action":"token_revoked","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 14:22:15.19733+00	
00000000-0000-0000-0000-000000000000	785d5289-3afa-4d7d-8b8e-85b3281e2fc3	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 15:14:09.837444+00	
00000000-0000-0000-0000-000000000000	8dbdbd90-8ad4-450d-bbdc-029975504e16	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-04 15:14:09.841823+00	
00000000-0000-0000-0000-000000000000	22630736-3912-40c4-a7fb-32709c99ce0f	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 10:21:09.709211+00	
00000000-0000-0000-0000-000000000000	21f257c7-d1fb-4935-bb77-52a1d9edef77	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 10:21:09.730416+00	
00000000-0000-0000-0000-000000000000	885698fc-9062-4caa-96ad-7bd8957cc5b5	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 11:30:41.025677+00	
00000000-0000-0000-0000-000000000000	2fc82ae0-8ce8-493d-8463-eb12b874860d	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 11:30:41.040722+00	
00000000-0000-0000-0000-000000000000	94a88660-9c71-416c-87ca-4f26eebe9e12	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 11:46:36.299688+00	
00000000-0000-0000-0000-000000000000	f395bd60-997a-4daa-82fd-b177d548d845	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 11:46:36.302474+00	
00000000-0000-0000-0000-000000000000	5e3ac3ca-f9a5-4759-ad5d-1715c0c4e9b5	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 12:11:09.873485+00	
00000000-0000-0000-0000-000000000000	184e4ba7-5826-419b-91b6-034f54be1fcd	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 12:11:09.881036+00	
00000000-0000-0000-0000-000000000000	0e94b3ba-bb95-4965-9806-d842f87bd237	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 12:48:51.574571+00	
00000000-0000-0000-0000-000000000000	64a6a17a-8fd3-4b3d-9948-af7677ddba05	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 12:48:51.578393+00	
00000000-0000-0000-0000-000000000000	3054f37e-665b-4143-ba33-91e3ca2951b4	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 13:48:56.220592+00	
00000000-0000-0000-0000-000000000000	88ea0c01-8dcf-4a4e-8946-3208d8caf7b2	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 13:48:56.223644+00	
00000000-0000-0000-0000-000000000000	2fc338ec-afb7-4d8f-995d-ae3b9be51baa	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 15:49:02.307536+00	
00000000-0000-0000-0000-000000000000	83ca1a42-c0e1-4c4e-94d7-8c8f72874e11	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 15:49:02.311648+00	
00000000-0000-0000-0000-000000000000	b7353fd0-b7a4-4ca7-93de-f1ded5edbc17	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 16:49:07.479852+00	
00000000-0000-0000-0000-000000000000	79b57e3a-5a6e-4782-a84f-0cad27069d96	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 16:49:07.483872+00	
00000000-0000-0000-0000-000000000000	cfbbb49a-dde2-41fc-8d7f-644b60c030de	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 19:50:03.497028+00	
00000000-0000-0000-0000-000000000000	74de3be5-2c18-452c-a905-1cddcdfa5461	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 19:50:03.500719+00	
00000000-0000-0000-0000-000000000000	bc4bd99c-554d-463d-8142-ebdfaf7bb5f5	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 20:50:13.689009+00	
00000000-0000-0000-0000-000000000000	363f337a-ec28-438a-ad89-d2a7f75c04cc	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 20:50:13.69057+00	
00000000-0000-0000-0000-000000000000	c3d44f4f-0df1-4669-a078-5ce09194a8ad	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:00:34.771926+00	
00000000-0000-0000-0000-000000000000	5f637ee2-dc8d-4f46-ae26-5a5ddd722f1a	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:00:34.774064+00	
00000000-0000-0000-0000-000000000000	41d009dd-f34c-4e18-90c8-5769a80efc5b	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:20:40.691784+00	
00000000-0000-0000-0000-000000000000	c6768eee-39d1-413f-8fee-750e03caf0fc	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:20:40.695047+00	
00000000-0000-0000-0000-000000000000	b0a4fcc6-c2f0-431f-adc5-83b7be18ff3b	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:32:28.078542+00	
00000000-0000-0000-0000-000000000000	f4f006bd-ba84-4601-9c86-aa66cbcd08e9	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:32:28.082066+00	
00000000-0000-0000-0000-000000000000	b7fc5c95-a38f-4df2-9f2e-a4c0c34dfdb2	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:50:23.853612+00	
00000000-0000-0000-0000-000000000000	179039c0-137c-4d28-9c7f-c39ff1752e6e	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-05 22:50:23.856907+00	
00000000-0000-0000-0000-000000000000	1ee926ea-d6ee-4140-950d-31aae7885fcc	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 06:21:04.439899+00	
00000000-0000-0000-0000-000000000000	d8ef42d8-b4cb-4a5f-9ba8-f3348d030cdf	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 06:21:04.453637+00	
00000000-0000-0000-0000-000000000000	250a2aa1-6673-4bb4-a55f-a3b70b906b44	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:03:03.532931+00	
00000000-0000-0000-0000-000000000000	9decc7c3-6a6d-49e2-bbce-80a26ce9b722	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:03:03.545418+00	
00000000-0000-0000-0000-000000000000	9797c689-16a3-4da6-8419-87ac763fb4c6	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:03:06.883098+00	
00000000-0000-0000-0000-000000000000	895ea5c4-77eb-4131-b30e-54cff4aa5ec6	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:03:06.88378+00	
00000000-0000-0000-0000-000000000000	41258219-1723-49eb-834f-0c42ae04389c	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:03:27.604787+00	
00000000-0000-0000-0000-000000000000	eeacf0b4-7b90-4f3a-9a62-28dca27f9b9b	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:03:27.610844+00	
00000000-0000-0000-0000-000000000000	784ebe08-0931-4682-be0a-7cc7d3b49367	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:50:46.837963+00	
00000000-0000-0000-0000-000000000000	44ef55e3-5563-4adb-88e8-c60767534d08	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:50:46.84077+00	
00000000-0000-0000-0000-000000000000	5ad18788-bd61-4c8c-b817-fa7817e483ca	{"action":"token_refreshed","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:50:57.872148+00	
00000000-0000-0000-0000-000000000000	d1c4d185-85a4-445f-b088-a1760189de23	{"action":"token_revoked","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 09:50:57.872837+00	
00000000-0000-0000-0000-000000000000	748d4cd5-b533-4c73-8196-2f8652f9bcd5	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-06 09:56:03.420157+00	
00000000-0000-0000-0000-000000000000	eb1578b1-401f-4a08-b19e-aae3965d9e1f	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-06 09:59:29.15819+00	
00000000-0000-0000-0000-000000000000	6e5fab40-bc19-45a4-8b6b-dc25083df00a	{"action":"logout","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account"}	2025-02-06 09:59:29.431175+00	
00000000-0000-0000-0000-000000000000	942d34c9-6d85-4ccb-a3a2-afd218a724f6	{"action":"token_refreshed","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 10:49:06.418846+00	
00000000-0000-0000-0000-000000000000	f027bd35-5881-4bcc-9172-c2792c76d628	{"action":"token_revoked","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 10:49:06.421504+00	
00000000-0000-0000-0000-000000000000	060af414-09e7-48c5-a722-e76b6a812963	{"action":"token_refreshed","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 11:55:52.471051+00	
00000000-0000-0000-0000-000000000000	068e1df6-e7e8-44e7-9f7c-c6f7f497a180	{"action":"token_revoked","actor_id":"403b70e3-ff6f-472a-9f74-5a6155b8f241","actor_username":"admin2@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 11:55:52.474345+00	
00000000-0000-0000-0000-000000000000	6194a1d0-6828-466c-af3d-97838f473cd3	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-06 12:11:22.813247+00	
00000000-0000-0000-0000-000000000000	5060e17e-6c19-4d88-ba7c-37c69197dbcf	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 13:33:48.397703+00	
00000000-0000-0000-0000-000000000000	c7d8ff77-60bb-4aab-abc2-4ba13fd3037b	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 13:33:48.40152+00	
00000000-0000-0000-0000-000000000000	d39973cd-f6ff-4128-8d82-122515892ac8	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-06 13:55:16.165469+00	
00000000-0000-0000-0000-000000000000	a1e1cb5e-898e-4d0a-89d0-7dbf9fc7cd5d	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 20:10:54.336334+00	
00000000-0000-0000-0000-000000000000	4e2648fc-af13-4f14-8b5d-40d1dfd83208	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-06 20:10:54.350822+00	
00000000-0000-0000-0000-000000000000	b6bd8f33-c770-410a-a0da-7b120bf18797	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-07 20:25:28.3555+00	
00000000-0000-0000-0000-000000000000	1088d29e-dcb6-4b5c-b242-bf1a26a40cfd	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-07 20:25:28.369835+00	
00000000-0000-0000-0000-000000000000	3713f134-f5b6-41bb-9ce5-3f0bffb44fe6	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-08 15:45:36.773958+00	
00000000-0000-0000-0000-000000000000	7f4842a9-68bf-416c-9ed3-8f1a0521ba6b	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-08 15:45:36.792499+00	
00000000-0000-0000-0000-000000000000	57066ec6-92c0-4813-b50c-4338331ab417	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-10 19:52:08.776112+00	
00000000-0000-0000-0000-000000000000	888dff78-1002-466f-8954-55823d681523	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-10 19:52:08.798132+00	
00000000-0000-0000-0000-000000000000	ea640b90-6ab9-4630-b5c3-db0b466c81ed	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-11 11:32:27.467781+00	
00000000-0000-0000-0000-000000000000	4c059816-d8cb-4d2d-9f8f-89e496ad76ee	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-11 11:32:35.016997+00	
00000000-0000-0000-0000-000000000000	21f5ca08-4ec2-4996-ae1d-580bd8be2008	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 12:50:49.600175+00	
00000000-0000-0000-0000-000000000000	70ddc68f-e10e-4f1f-a32e-e6a949b0f024	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 12:50:49.612399+00	
00000000-0000-0000-0000-000000000000	2cc18ec4-38d6-4d5d-94e4-2da56a9326f8	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 13:16:52.111809+00	
00000000-0000-0000-0000-000000000000	dd8ceef4-4a74-431f-8e64-c227c9766508	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 13:16:52.11529+00	
00000000-0000-0000-0000-000000000000	42a6b0ae-9898-4ede-9b9a-cef7bba00ff7	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 14:26:05.432619+00	
00000000-0000-0000-0000-000000000000	ae50a06c-3bca-4144-8095-788092ba3356	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 14:26:05.436542+00	
00000000-0000-0000-0000-000000000000	7290ede2-96f1-42be-b5fa-777669b8462c	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 18:06:52.609932+00	
00000000-0000-0000-0000-000000000000	07bf92fd-95df-4038-8d56-89f78ae330a4	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 18:06:52.611714+00	
00000000-0000-0000-0000-000000000000	10102f14-078b-4a47-8d5e-4e92af3a3f23	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 18:08:49.874936+00	
00000000-0000-0000-0000-000000000000	32a36923-2e92-4408-9927-d2fcefd4ae77	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-11 18:08:49.875994+00	
00000000-0000-0000-0000-000000000000	11fa95c6-8c3d-4bee-8104-bd5b00719b95	{"action":"token_refreshed","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-14 15:35:34.143894+00	
00000000-0000-0000-0000-000000000000	280e28c5-d914-473f-8d29-64f2a39a7c59	{"action":"token_revoked","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-14 15:35:34.170439+00	
00000000-0000-0000-0000-000000000000	03b4017f-c1ed-4d2c-9982-bc3d70ff8ede	{"action":"logout","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-02-14 15:41:52.414667+00	
00000000-0000-0000-0000-000000000000	f8965707-0284-4d55-a792-0a612a62b6ff	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-14 15:43:25.452814+00	
00000000-0000-0000-0000-000000000000	591f1e32-92a0-48b5-bd22-3f0a3d99c434	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-14 15:46:33.933151+00	
00000000-0000-0000-0000-000000000000	8c90e76f-a0ca-4c27-a09d-91aff6ea680e	{"action":"token_refreshed","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-14 16:19:54.017941+00	
00000000-0000-0000-0000-000000000000	0358d8d8-7051-4a4a-8a56-607df97706ec	{"action":"token_revoked","actor_id":"fd1e41c6-4ca9-46dc-b79a-7be0d50c5305","actor_username":"ouhchouch.youssef@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-02-14 16:19:54.023895+00	
00000000-0000-0000-0000-000000000000	c918c955-93d0-48c0-b42e-8683c53e9f02	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-14 16:23:40.816042+00	
00000000-0000-0000-0000-000000000000	46421a85-82f0-4d1a-97e7-599743787ff7	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-14 20:30:30.26537+00	
00000000-0000-0000-0000-000000000000	27937a2b-5a85-49ad-a799-4eec6f039610	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-14 20:30:30.268724+00	
00000000-0000-0000-0000-000000000000	b81785af-13c9-407b-8960-fcfc8edc0e9a	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-14 21:47:20.54374+00	
00000000-0000-0000-0000-000000000000	5aa13d92-21aa-4a19-b9d6-50e57bd05d8e	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-15 11:45:05.29408+00	
00000000-0000-0000-0000-000000000000	2983d406-7526-4acf-9944-d515c4726599	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 12:41:25.088585+00	
00000000-0000-0000-0000-000000000000	9d357783-2238-4688-a601-076599966483	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 12:41:25.09334+00	
00000000-0000-0000-0000-000000000000	f9b25a2f-b46c-44db-b1dd-d3dd77da5aa5	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 14:34:19.399002+00	
00000000-0000-0000-0000-000000000000	f12d2315-303d-473c-ac3e-9e51e407bb35	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 14:34:19.402418+00	
00000000-0000-0000-0000-000000000000	7c14c533-22e8-40cc-93bd-ff164b98926c	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 18:55:42.794384+00	
00000000-0000-0000-0000-000000000000	7d34bd6d-dc2b-4603-a214-9fcb9fc6954b	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-15 18:55:42.824317+00	
00000000-0000-0000-0000-000000000000	7e2c5782-ecf0-4825-ad3f-8c462c758deb	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 13:30:46.55574+00	
00000000-0000-0000-0000-000000000000	a7ce02e6-1b6f-4c97-9297-1e50653556cc	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 13:30:46.580035+00	
00000000-0000-0000-0000-000000000000	919fda1b-93b9-43a5-a435-6defef3f6ef6	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 13:31:05.296202+00	
00000000-0000-0000-0000-000000000000	d2a29cbb-b169-4ffa-b84f-972a1a152609	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 13:31:05.300416+00	
00000000-0000-0000-0000-000000000000	6dfac3ab-8700-4b17-b688-cec26f2ef084	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 14:30:49.761315+00	
00000000-0000-0000-0000-000000000000	c0400fc2-1a10-41a8-a48e-4bcdc1aacce3	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 14:30:49.772609+00	
00000000-0000-0000-0000-000000000000	8b659b85-cef2-4120-b98f-605902adb6ed	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 17:19:10.223594+00	
00000000-0000-0000-0000-000000000000	9b7a08d3-c7c4-49f8-bdf9-8af6bed290f1	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-16 17:19:10.227512+00	
00000000-0000-0000-0000-000000000000	60456d00-8efe-4b45-a5fc-256c6890577b	{"action":"login","actor_id":"f1964cd5-b53a-4626-820b-673e558931cd","actor_username":"yomix901@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-16 17:20:39.31842+00	
00000000-0000-0000-0000-000000000000	c8b75672-38bf-4a47-82e9-20c302a3327b	{"action":"login","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-19 10:59:05.147926+00	
00000000-0000-0000-0000-000000000000	c09d8b9b-7817-4b73-8ec5-f6e6e8d0effd	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 11:02:10.985142+00	
00000000-0000-0000-0000-000000000000	f1257997-086d-4c7c-b9b0-27bde21f2937	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 11:02:10.990235+00	
00000000-0000-0000-0000-000000000000	f5802c2c-70b6-4c51-9a89-3d4d78a90fe6	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 11:02:21.50341+00	
00000000-0000-0000-0000-000000000000	4345d71c-c9eb-42fd-ab72-72a742591a36	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 11:02:21.507056+00	
00000000-0000-0000-0000-000000000000	7f79586f-6501-4aa6-ae11-3882de6c6581	{"action":"user_recovery_requested","actor_id":"ec17b144-82e3-4f6b-956d-d9a0ddc84b75","actor_username":"admin@fourriere.com","actor_via_sso":false,"log_type":"user"}	2025-02-19 11:14:05.664333+00	
00000000-0000-0000-0000-000000000000	53e2e6d6-4bb7-4ff5-9391-f7ec5601cbe2	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"yomix@fourriere.com","user_id":"7cc5166c-5406-4c68-aa14-fbbccf9fe96a","user_phone":""}}	2025-02-19 11:16:53.11073+00	
00000000-0000-0000-0000-000000000000	f525c867-b75c-40e7-a2c2-b253f84f0349	{"action":"login","actor_id":"7cc5166c-5406-4c68-aa14-fbbccf9fe96a","actor_username":"yomix@fourriere.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-02-19 11:17:10.458501+00	
00000000-0000-0000-0000-000000000000	06d09213-4574-4767-aa74-a6c516bf0ea6	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 11:57:09.241229+00	
00000000-0000-0000-0000-000000000000	a39747d0-7df5-4363-83a8-bbacd5fe177c	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 11:57:09.247235+00	
00000000-0000-0000-0000-000000000000	24dfb409-ee45-414c-add8-4945aabf57a0	{"action":"token_refreshed","actor_id":"7cc5166c-5406-4c68-aa14-fbbccf9fe96a","actor_username":"yomix@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 12:20:53.625756+00	
00000000-0000-0000-0000-000000000000	873c3f19-9f3c-41e3-a4f8-2e7006bda68e	{"action":"token_revoked","actor_id":"7cc5166c-5406-4c68-aa14-fbbccf9fe96a","actor_username":"yomix@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 12:20:53.628931+00	
00000000-0000-0000-0000-000000000000	e101197e-4f8b-49e2-8ec6-7fd584d52ff6	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 12:29:54.993825+00	
00000000-0000-0000-0000-000000000000	2fbe8499-34ce-4fd4-976a-02effbfac5bf	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 12:29:54.994737+00	
00000000-0000-0000-0000-000000000000	3b7e4d2a-cdf8-46c8-bdc5-a92cc3735fa1	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 13:02:04.639969+00	
00000000-0000-0000-0000-000000000000	9f3a1458-0f0e-4cb7-9cbb-73b506ee5ae3	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 13:02:04.644925+00	
00000000-0000-0000-0000-000000000000	7302ddc7-2a03-4a38-b780-c5be757befe0	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 13:57:03.931881+00	
00000000-0000-0000-0000-000000000000	a084b53a-2db0-4390-93a5-bfd7085ade4c	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 13:57:03.934065+00	
00000000-0000-0000-0000-000000000000	a7f22d3b-40b3-44e5-8919-4433cdc105a3	{"action":"token_refreshed","actor_id":"7cc5166c-5406-4c68-aa14-fbbccf9fe96a","actor_username":"yomix@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 14:08:56.541964+00	
00000000-0000-0000-0000-000000000000	a57206ee-df0e-4029-a0db-d209eab0b5e7	{"action":"token_revoked","actor_id":"7cc5166c-5406-4c68-aa14-fbbccf9fe96a","actor_username":"yomix@fourriere.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 14:08:56.545182+00	
00000000-0000-0000-0000-000000000000	4e3129eb-f5db-4399-b6ce-79a431a5eb03	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 14:32:09.940799+00	
00000000-0000-0000-0000-000000000000	00deb69e-446d-4f76-9479-b0d409c275ac	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 14:32:09.94414+00	
00000000-0000-0000-0000-000000000000	e079307e-5bfa-4c8c-9092-5f1c3bf7ddef	{"action":"token_refreshed","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 18:28:34.356146+00	
00000000-0000-0000-0000-000000000000	18003a3a-835f-470f-b15f-f0aa5d93b882	{"action":"token_revoked","actor_id":"dabb2a2b-fcee-4c26-a8f1-3701325425e7","actor_username":"admin@admin.com","actor_via_sso":false,"log_type":"token"}	2025-02-19 18:28:34.366592+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	authenticated	authenticated	ouhchouch.youssef@gmail.com	$2a$10$0wW0LbZZhjI3eVMvqpBUi.HaQrSmVD6X1kFDAVOuVNpiul/WcQMwO	2024-12-15 19:21:08.049011+00	\N		\N		\N			\N	2025-01-26 21:49:53.607768+00	{"provider": "email", "providers": ["email"]}	{"sub": "fd1e41c6-4ca9-46dc-b79a-7be0d50c5305", "email": "ouhchouch.youssef@gmail.com", "email_verified": false, "phone_verified": false}	\N	2024-12-15 19:21:08.022937+00	2025-02-14 16:19:54.035835+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	f1964cd5-b53a-4626-820b-673e558931cd	authenticated	authenticated	yomix901@gmail.com	$2a$10$nIRiyLE8n/d4/zZZhrHFK.neNCXVMtvQGzawlIj/iw.KDsaSUGETW	2024-12-15 19:28:04.707405+00	\N		\N		\N			\N	2025-02-16 17:20:39.320384+00	{"provider": "email", "providers": ["email"]}	{"sub": "f1964cd5-b53a-4626-820b-673e558931cd", "email": "yomix901@gmail.com", "email_verified": false, "phone_verified": false}	\N	2024-12-15 19:28:04.698022+00	2025-02-16 17:20:39.329855+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	7cc5166c-5406-4c68-aa14-fbbccf9fe96a	authenticated	authenticated	yomix@fourriere.com	$2a$10$4CuJpdYtCKQ6vXZrW8KRwuSifwham1LeUqtX49YC2BQuWnaRTS/LW	2025-02-19 11:16:53.11382+00	\N		\N		\N			\N	2025-02-19 11:17:10.460402+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-02-19 11:16:53.100609+00	2025-02-19 14:08:56.551794+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	cc6f7bef-5ca2-4744-b976-94c5851c1ac1	authenticated	authenticated	test@fourriere.ma	$2a$10$Hpwpkiz6d7KnnVU2TJTXQ.hl0fCyql1JORHOz9kTjDKlV/NwzlB3S	2024-12-17 14:43:16.514797+00	\N		\N		\N			\N	2024-12-17 14:43:57.702499+00	{"provider": "email", "providers": ["email"]}	{"sub": "cc6f7bef-5ca2-4744-b976-94c5851c1ac1", "email": "test@fourriere.ma", "email_verified": false, "phone_verified": false}	\N	2024-12-17 14:43:16.503267+00	2024-12-17 14:43:57.705011+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	403b70e3-ff6f-472a-9f74-5a6155b8f241	authenticated	authenticated	admin2@fourriere.com	$2a$10$.almZxZaQ2cXKkBSYazVLuAj9zhE2ds9tW0pvemJ7t9GKLPUlF0ka	2025-01-31 14:23:33.360414+00	\N		\N		\N			\N	2025-01-31 14:24:02.955911+00	{"provider": "email", "providers": ["email"]}	{"sub": "403b70e3-ff6f-472a-9f74-5a6155b8f241", "email": "admin2@fourriere.com", "email_verified": true, "phone_verified": false}	\N	2025-01-31 14:23:33.323152+00	2025-02-06 11:55:52.478694+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	authenticated	authenticated	admin@fourriere.com	$2a$10$yvQnoOlF87VWWgBxpvzgL.Pfwr3mASL1CcJmtSzimnF4SDqk/jZ9q	2024-12-17 13:36:51.05302+00	\N		\N	8f93388dc70c0542295a31fe6444734c476a001e964b9fc805e24872	2025-02-19 11:14:05.675446+00			\N	2025-01-05 12:39:31.330994+00	{"provider": "email", "providers": ["email"]}	{"sub": "ec17b144-82e3-4f6b-956d-d9a0ddc84b75", "email": "admin@fourriere.com", "email_verified": false, "phone_verified": false}	\N	2024-12-17 13:36:51.030465+00	2025-02-19 11:14:06.097417+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	dabb2a2b-fcee-4c26-a8f1-3701325425e7	authenticated	authenticated	admin@admin.com	$2a$10$fLws99j1CXe0mwaNvdDw6eHmJAOkisPN8yfTqruSfq4slumINzhM2	2025-01-06 17:14:07.435249+00	\N		\N		\N			\N	2025-02-19 10:59:05.174163+00	{"provider": "email", "providers": ["email"]}	{"sub": "dabb2a2b-fcee-4c26-a8f1-3701325425e7", "email": "admin@admin.com", "email_verified": true, "phone_verified": false}	\N	2025-01-06 17:14:07.40816+00	2025-02-19 18:28:34.380567+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	576c76fb-b2e9-4a4e-94fc-810288687cec	authenticated	authenticated	yomix90@gmail.com	$2a$10$cLdXoA6Am8.EWZ3xvVzCTeDl.4rllgpRcGNzfaQbv3SgbAzSNsDn6	2024-11-30 19:21:45.853625+00	\N		\N		\N			\N	2025-02-03 14:17:04.65702+00	{"provider": "email", "providers": ["email"]}	{}	\N	2024-11-30 19:21:45.815932+00	2025-02-03 14:17:04.668472+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
576c76fb-b2e9-4a4e-94fc-810288687cec	576c76fb-b2e9-4a4e-94fc-810288687cec	{"sub": "576c76fb-b2e9-4a4e-94fc-810288687cec", "email": "yomix90@gmail.com", "email_verified": false, "phone_verified": false}	email	2024-11-30 19:21:45.840127+00	2024-11-30 19:21:45.841234+00	2024-11-30 19:21:45.841234+00	a5e51371-cea8-4ae3-8892-7ee6a8219e20
fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	{"sub": "fd1e41c6-4ca9-46dc-b79a-7be0d50c5305", "email": "ouhchouch.youssef@gmail.com", "email_verified": false, "phone_verified": false}	email	2024-12-15 19:21:08.04207+00	2024-12-15 19:21:08.042126+00	2024-12-15 19:21:08.042126+00	0a17c4d6-1c0a-4c43-9af4-639d7eebb0b6
f1964cd5-b53a-4626-820b-673e558931cd	f1964cd5-b53a-4626-820b-673e558931cd	{"sub": "f1964cd5-b53a-4626-820b-673e558931cd", "email": "yomix901@gmail.com", "email_verified": false, "phone_verified": false}	email	2024-12-15 19:28:04.702878+00	2024-12-15 19:28:04.702931+00	2024-12-15 19:28:04.702931+00	717c2758-ec3c-4cf3-8f49-83cb66ff3b2f
ec17b144-82e3-4f6b-956d-d9a0ddc84b75	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	{"sub": "ec17b144-82e3-4f6b-956d-d9a0ddc84b75", "email": "admin@fourriere.com", "email_verified": false, "phone_verified": false}	email	2024-12-17 13:36:51.046419+00	2024-12-17 13:36:51.046477+00	2024-12-17 13:36:51.046477+00	fc2a336c-c9d1-4c1e-9a6b-586dd14c1c35
cc6f7bef-5ca2-4744-b976-94c5851c1ac1	cc6f7bef-5ca2-4744-b976-94c5851c1ac1	{"sub": "cc6f7bef-5ca2-4744-b976-94c5851c1ac1", "email": "test@fourriere.ma", "email_verified": false, "phone_verified": false}	email	2024-12-17 14:43:16.510424+00	2024-12-17 14:43:16.510473+00	2024-12-17 14:43:16.510473+00	f8887906-f016-4986-adc0-c34702006d82
dabb2a2b-fcee-4c26-a8f1-3701325425e7	dabb2a2b-fcee-4c26-a8f1-3701325425e7	{"sub": "dabb2a2b-fcee-4c26-a8f1-3701325425e7", "email": "admin@admin.com", "email_verified": false, "phone_verified": false}	email	2025-01-06 17:14:07.42779+00	2025-01-06 17:14:07.427876+00	2025-01-06 17:14:07.427876+00	d972f851-654f-4458-8b9e-613acd1be65d
403b70e3-ff6f-472a-9f74-5a6155b8f241	403b70e3-ff6f-472a-9f74-5a6155b8f241	{"sub": "403b70e3-ff6f-472a-9f74-5a6155b8f241", "email": "admin2@fourriere.com", "email_verified": false, "phone_verified": false}	email	2025-01-31 14:23:33.355047+00	2025-01-31 14:23:33.355111+00	2025-01-31 14:23:33.355111+00	b6cbeb14-17de-4dba-aeae-563bdb793006
7cc5166c-5406-4c68-aa14-fbbccf9fe96a	7cc5166c-5406-4c68-aa14-fbbccf9fe96a	{"sub": "7cc5166c-5406-4c68-aa14-fbbccf9fe96a", "email": "yomix@fourriere.com", "email_verified": false, "phone_verified": false}	email	2025-02-19 11:16:53.108872+00	2025-02-19 11:16:53.108935+00	2025-02-19 11:16:53.108935+00	c03f95dd-f602-4e76-840e-c3158853cc38
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
e25aecdc-e366-4629-a1f3-a26d39fb66e0	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	2025-01-06 18:19:44.390902+00	2025-02-14 16:19:54.038959+00	\N	aal1	\N	2025-02-14 16:19:54.038875	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36	105.188.39.201	\N
261d8c66-991b-4ee3-972d-18ec87d38867	f1964cd5-b53a-4626-820b-673e558931cd	2025-02-14 16:23:40.820834+00	2025-02-14 16:23:40.820834+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36	105.188.39.201	\N
ddb9d6e0-39d5-4dce-8c5c-82dd8ffdb033	7cc5166c-5406-4c68-aa14-fbbccf9fe96a	2025-02-19 11:17:10.460483+00	2025-02-19 14:08:56.554161+00	\N	aal1	\N	2025-02-19 14:08:56.554077	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0	160.177.40.146	\N
82042b1f-6f06-45de-8b9a-8258eabdcb10	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-14 21:47:20.547657+00	2025-02-14 21:47:20.547657+00	\N	aal1	\N	\N	Mozilla/5.0 (Linux; Android 13; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.6834.163 Mobile Safari/537.36	105.74.75.75	\N
7e44dafa-b3a1-47d2-8e0e-9b348df4d12f	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-15 11:45:05.309043+00	2025-02-15 11:45:05.309043+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0	41.250.103.140	\N
0079de13-bfe9-4f04-8548-69dd7d23090f	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-11 11:32:27.49126+00	2025-02-19 14:32:09.951698+00	\N	aal1	\N	2025-02-19 14:32:09.951629	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36	160.177.40.146	\N
2263ff7f-36b9-4c34-8ae0-e9b578df4950	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-14 15:43:25.456598+00	2025-02-19 18:28:34.383499+00	\N	aal1	\N	2025-02-19 18:28:34.383425	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36	105.74.65.131	\N
234fd2be-df9f-4c56-981d-2872a3650a86	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-14 15:46:33.936563+00	2025-02-16 13:31:05.313764+00	\N	aal1	\N	2025-02-16 13:31:05.31369	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36	105.188.11.210	\N
1bd7b45a-8edf-4d42-a753-32a719e04d8c	f1964cd5-b53a-4626-820b-673e558931cd	2025-02-16 17:20:39.320463+00	2025-02-16 17:20:39.320463+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36	105.188.39.201	\N
de03c584-0db4-474e-8721-10b11a495622	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-11 11:32:35.021217+00	2025-02-19 12:29:55.009508+00	\N	aal1	\N	2025-02-19 12:29:55.009424	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36	160.177.40.146	\N
4608f4e2-0808-4636-b552-a7a25a190291	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-19 10:59:05.17488+00	2025-02-19 13:57:03.941214+00	\N	aal1	\N	2025-02-19 13:57:03.941147	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0	160.177.40.146	\N
27c09e0b-1979-44af-aec1-d2bd7578ef34	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	2025-01-06 17:14:25.152279+00	2025-01-06 17:14:25.152279+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36	196.115.233.195	\N
b0b52351-a283-446c-b4f2-7b59729806a4	403b70e3-ff6f-472a-9f74-5a6155b8f241	2025-01-31 14:23:33.365128+00	2025-01-31 14:23:33.365128+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36	160.179.1.213	\N
68e22de9-bd27-4a58-a1ac-3f8d017201ce	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	2025-01-21 20:37:47.015143+00	2025-01-26 17:41:17.082413+00	\N	aal1	\N	2025-01-26 17:41:17.082345	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36	105.188.101.9	\N
e74d1811-0933-43ed-8f23-fac89869332b	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	2025-01-26 21:49:53.607855+00	2025-01-26 21:49:53.607855+00	\N	aal1	\N	\N	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36	105.67.2.231	\N
89916347-6098-422c-b6d3-123288377da3	403b70e3-ff6f-472a-9f74-5a6155b8f241	2025-01-31 14:24:02.956626+00	2025-02-06 11:55:52.480018+00	\N	aal1	\N	2025-02-06 11:55:52.479947	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36	41.143.73.46	\N
f328f5d7-4ebf-4d28-a389-216ef3c28d82	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-06 12:11:22.816248+00	2025-02-06 13:33:48.413564+00	\N	aal1	\N	2025-02-06 13:33:48.413492	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0	41.143.73.46	\N
b1cd7c85-3788-43dc-b5a8-41ff85530e1f	dabb2a2b-fcee-4c26-a8f1-3701325425e7	2025-02-06 13:55:16.167751+00	2025-02-06 13:55:16.167751+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36	41.143.73.46	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
27c09e0b-1979-44af-aec1-d2bd7578ef34	2025-01-06 17:14:25.154353+00	2025-01-06 17:14:25.154353+00	password	39cae9a3-390e-4bd8-b4db-a0df4a4bc254
e25aecdc-e366-4629-a1f3-a26d39fb66e0	2025-01-06 18:19:44.39647+00	2025-01-06 18:19:44.39647+00	password	5b0491e1-6611-4ec6-9311-5a11072ca8f8
68e22de9-bd27-4a58-a1ac-3f8d017201ce	2025-01-21 20:37:47.02513+00	2025-01-21 20:37:47.02513+00	password	d564457f-7ff9-4a42-a994-2d6a9aab3fc6
e74d1811-0933-43ed-8f23-fac89869332b	2025-01-26 21:49:53.623213+00	2025-01-26 21:49:53.623213+00	password	5d97ff49-b52f-4556-9694-fe1af736d19f
b0b52351-a283-446c-b4f2-7b59729806a4	2025-01-31 14:23:33.370912+00	2025-01-31 14:23:33.370912+00	password	826a6202-2b68-46ad-bd9f-fa6ff48e4adc
89916347-6098-422c-b6d3-123288377da3	2025-01-31 14:24:02.9589+00	2025-01-31 14:24:02.9589+00	password	d6ab0ef3-d8a3-4616-b021-c50937e07037
f328f5d7-4ebf-4d28-a389-216ef3c28d82	2025-02-06 12:11:22.827498+00	2025-02-06 12:11:22.827498+00	password	546e4e5c-7832-4caa-99eb-446a0cdaf727
b1cd7c85-3788-43dc-b5a8-41ff85530e1f	2025-02-06 13:55:16.191125+00	2025-02-06 13:55:16.191125+00	password	c833a3e7-ccca-41e2-8128-4eb91337da5f
0079de13-bfe9-4f04-8548-69dd7d23090f	2025-02-11 11:32:27.54478+00	2025-02-11 11:32:27.54478+00	password	a1bd174d-96dd-4ef7-8976-e3a1e874d79c
de03c584-0db4-474e-8721-10b11a495622	2025-02-11 11:32:35.027125+00	2025-02-11 11:32:35.027125+00	password	67353eab-e2e1-48ad-9594-3fa3ce60b73d
2263ff7f-36b9-4c34-8ae0-e9b578df4950	2025-02-14 15:43:25.475986+00	2025-02-14 15:43:25.475986+00	password	802dc67e-8e67-46cf-a67e-041012d12c5f
234fd2be-df9f-4c56-981d-2872a3650a86	2025-02-14 15:46:33.941232+00	2025-02-14 15:46:33.941232+00	password	39b087eb-c752-453a-92d3-676f009d985e
261d8c66-991b-4ee3-972d-18ec87d38867	2025-02-14 16:23:40.827865+00	2025-02-14 16:23:40.827865+00	password	cfffbc84-5997-4384-a99e-e03bab2c9672
82042b1f-6f06-45de-8b9a-8258eabdcb10	2025-02-14 21:47:20.554589+00	2025-02-14 21:47:20.554589+00	password	1026c1b2-8429-4260-b27c-ab887ced642d
7e44dafa-b3a1-47d2-8e0e-9b348df4d12f	2025-02-15 11:45:05.356468+00	2025-02-15 11:45:05.356468+00	password	289eb732-c509-45eb-9a84-929eb1665d6d
1bd7b45a-8edf-4d42-a753-32a719e04d8c	2025-02-16 17:20:39.331165+00	2025-02-16 17:20:39.331165+00	password	fd8463ff-404a-4e23-bef9-2bd052b54feb
4608f4e2-0808-4636-b552-a7a25a190291	2025-02-19 10:59:05.239936+00	2025-02-19 10:59:05.239936+00	password	0b15c5c2-4b29-40e6-93c7-4bc417b52f30
ddb9d6e0-39d5-4dce-8c5c-82dd8ffdb033	2025-02-19 11:17:10.478147+00	2025-02-19 11:17:10.478147+00	password	86c9fc60-6052-4193-a29f-1541e444c2a1
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
882d81af-6c30-44b5-b842-f4593ad2b4d3	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	recovery_token	8f93388dc70c0542295a31fe6444734c476a001e964b9fc805e24872	admin@fourriere.com	2025-02-19 11:14:06.112796	2025-02-19 11:14:06.112796
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	579	rG0gogROe8Fj__yuNGrgMA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-14 15:43:25.462182+00	2025-02-15 12:41:25.095884+00	\N	2263ff7f-36b9-4c34-8ae0-e9b578df4950
00000000-0000-0000-0000-000000000000	583	K8FCRsGjuB6D2h2mt6tBSg	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-14 20:30:30.272559+00	2025-02-15 18:55:42.824896+00	-b9YPKvtbIDX8ecZ5pgjsg	234fd2be-df9f-4c56-981d-2872a3650a86
00000000-0000-0000-0000-000000000000	587	QtNcXDFGTMCqlhEaLYDvmw	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-15 14:34:19.404247+00	2025-02-16 13:30:46.580629+00	E8Zqji-L4aT-Z43fkAI4DQ	2263ff7f-36b9-4c34-8ae0-e9b578df4950
00000000-0000-0000-0000-000000000000	467	hZC8WRAcb7oq3-b78k28mQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-01 00:59:27.104747+00	2025-02-01 02:00:05.233412+00	QsFNTthStecNLt-2U677WA	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	416	zqd9NTsieAt9DxfHxNtxXQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-20 19:03:49.052915+00	2025-01-20 20:03:56.729248+00	STfyZncuNyXV1uhk58H0Jg	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	597	ILV-wIgX55nnXrejJ4x2zg	7cc5166c-5406-4c68-aa14-fbbccf9fe96a	t	2025-02-19 11:17:10.468637+00	2025-02-19 12:20:53.630585+00	\N	ddb9d6e0-39d5-4dce-8c5c-82dd8ffdb033
00000000-0000-0000-0000-000000000000	601	bCdRecURS7NBzuHIpml-eA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-19 13:02:04.648973+00	2025-02-19 14:32:09.944767+00	MX9E23GfMn7QTG3M-CHWXA	0079de13-bfe9-4f04-8548-69dd7d23090f
00000000-0000-0000-0000-000000000000	592	ECg-gnjQtgwH5wuVOfBZdA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-16 17:19:10.229936+00	2025-02-19 18:28:34.367349+00	jWsiN8v2To7ItSmw_4taDg	2263ff7f-36b9-4c34-8ae0-e9b578df4950
00000000-0000-0000-0000-000000000000	605	8P5_ewsUDk_Wza_BUq6PhA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-19 18:28:34.376397+00	2025-02-19 18:28:34.376397+00	ECg-gnjQtgwH5wuVOfBZdA	2263ff7f-36b9-4c34-8ae0-e9b578df4950
00000000-0000-0000-0000-000000000000	473	J0zMJM9vr8ifrh4nH-wRBg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-01 15:47:30.008318+00	2025-02-01 16:48:31.368731+00	c-uv7cFU0oMpsuIyHLmkbA	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	476	Z89WroHjdzaQx3Sj-MQ6Tg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-01 17:46:33.830221+00	2025-02-01 18:58:06.853004+00	NkSHcCj-vIR0AqGVS8V5Ag	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	479	1VZmBjJORJVQWGXDgvckmQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-01 18:58:06.856121+00	2025-02-01 22:09:08.537032+00	Z89WroHjdzaQx3Sj-MQ6Tg	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	351	jBbcYwbpH74g9386MhcARg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	f	2025-01-06 17:14:25.153071+00	2025-01-06 17:14:25.153071+00	\N	27c09e0b-1979-44af-aec1-d2bd7578ef34
00000000-0000-0000-0000-000000000000	382	tGkOij2h2dJQtbLqCrhqqw	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-08 18:47:23.846922+00	2025-01-10 17:00:46.196794+00	GrA7lF_o1IzQnKo8OesdrQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	482	SnApGZdDfa_KZykpAO7CXA	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-01 22:09:08.537747+00	2025-02-02 15:36:35.497235+00	1VZmBjJORJVQWGXDgvckmQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	391	edAocv7G2jLdRjUPx2PrCg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-10 17:00:46.199815+00	2025-01-10 18:22:03.842507+00	tGkOij2h2dJQtbLqCrhqqw	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	485	SOxjaPSXrqLlO7VhaY3wFg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-02 15:36:35.501691+00	2025-02-02 16:36:33.140068+00	SnApGZdDfa_KZykpAO7CXA	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	396	_cAn5I3Kh5gu5AG6RgNcNQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-10 19:32:24.405039+00	2025-01-11 02:31:37.598826+00	OaKmaUhHq1WJ_WNEzfA-JQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	418	mqOnraS6dvJufBBBdzUoeQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-20 20:03:56.731584+00	2025-01-21 19:19:04.751809+00	zqd9NTsieAt9DxfHxNtxXQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	399	OF5BvOuYsSSen_DuTDlB_A	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-11 02:31:37.602003+00	2025-01-11 03:29:22.036252+00	_cAn5I3Kh5gu5AG6RgNcNQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	401	bWCUVv1HKAsdSyMM5sYBdA	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-11 03:29:22.040637+00	2025-01-18 17:50:36.610227+00	OF5BvOuYsSSen_DuTDlB_A	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	446	ST0gAFSre6PAgrGbEHkMqA	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	f	2025-01-26 21:49:53.616213+00	2025-01-26 21:49:53.616213+00	\N	e74d1811-0933-43ed-8f23-fac89869332b
00000000-0000-0000-0000-000000000000	448	ehX9pJHYZeRzLbI68mRekw	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-27 22:29:37.387547+00	2025-01-31 17:40:01.359114+00	ldxu2bA0u3U0gStPqWGDCg	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	580	-b9YPKvtbIDX8ecZ5pgjsg	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-14 15:46:33.938374+00	2025-02-14 20:30:30.270353+00	\N	234fd2be-df9f-4c56-981d-2872a3650a86
00000000-0000-0000-0000-000000000000	410	STfyZncuNyXV1uhk58H0Jg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-18 17:50:36.613061+00	2025-01-20 19:03:49.049443+00	bWCUVv1HKAsdSyMM5sYBdA	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	584	c7F26P0qlNopFPjdB4UYsg	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-14 21:47:20.550429+00	2025-02-14 21:47:20.550429+00	\N	82042b1f-6f06-45de-8b9a-8258eabdcb10
00000000-0000-0000-0000-000000000000	361	AZE1h1g5MFHfiIKkCxp7JQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-06 18:19:44.393311+00	2025-01-06 19:48:26.241138+00	\N	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	465	QsFNTthStecNLt-2U677WA	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-31 23:56:33.367121+00	2025-02-01 00:59:27.100395+00	g7N69fUzOAzdF5ekD_7AaQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	588	xAmhjRkq9DWPB1pP5hK1cQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-15 18:55:42.839247+00	2025-02-16 13:31:05.303068+00	K8FCRsGjuB6D2h2mt6tBSg	234fd2be-df9f-4c56-981d-2872a3650a86
00000000-0000-0000-0000-000000000000	593	lWJ9FAch0ICCWSCd9LQDrA	f1964cd5-b53a-4626-820b-673e558931cd	f	2025-02-16 17:20:39.328327+00	2025-02-16 17:20:39.328327+00	\N	1bd7b45a-8edf-4d42-a753-32a719e04d8c
00000000-0000-0000-0000-000000000000	366	QUAEse8ldfdC6qPg65QcQg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-06 19:48:26.24145+00	2025-01-07 01:49:01.511234+00	AZE1h1g5MFHfiIKkCxp7JQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	598	SpmZcy-dw_BVOk9pspeDUA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-19 11:57:09.251283+00	2025-02-19 13:57:03.935337+00	Nr6nyIrRGWwMY9bKkJwmOw	4608f4e2-0808-4636-b552-a7a25a190291
00000000-0000-0000-0000-000000000000	602	2SjpuE1IPlSnrhLsf3i4lA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-19 13:57:03.937146+00	2025-02-19 13:57:03.937146+00	SpmZcy-dw_BVOk9pspeDUA	4608f4e2-0808-4636-b552-a7a25a190291
00000000-0000-0000-0000-000000000000	369	D4rZO4jBevwoRumnb5ufDQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-07 01:49:01.512175+00	2025-01-08 16:46:35.947252+00	QUAEse8ldfdC6qPg65QcQg	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	377	g0ZNaTvRfRjCxD8j-gokBA	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-08 16:46:35.949987+00	2025-01-08 17:46:46.509627+00	D4rZO4jBevwoRumnb5ufDQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	379	GrA7lF_o1IzQnKo8OesdrQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-08 17:46:46.511037+00	2025-01-08 18:47:23.843897+00	g0ZNaTvRfRjCxD8j-gokBA	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	394	OaKmaUhHq1WJ_WNEzfA-JQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-10 18:22:03.845904+00	2025-01-10 19:32:24.404603+00	edAocv7G2jLdRjUPx2PrCg	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	439	Ntn_sUo6nhUtIf3YACoH4Q	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-21 20:37:47.01884+00	2025-01-26 17:41:17.076002+00	\N	68e22de9-bd27-4a58-a1ac-3f8d017201ce
00000000-0000-0000-0000-000000000000	443	3V2_MiCBH1S5m7mRH4r0LQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	f	2025-01-26 17:41:17.079217+00	2025-01-26 17:41:17.079217+00	Ntn_sUo6nhUtIf3YACoH4Q	68e22de9-bd27-4a58-a1ac-3f8d017201ce
00000000-0000-0000-0000-000000000000	434	ldxu2bA0u3U0gStPqWGDCg	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-21 19:19:04.752187+00	2025-01-27 22:29:37.383377+00	mqOnraS6dvJufBBBdzUoeQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	494	p-lye_kZdEBwVsn2yNpbEQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-02 18:44:14.232619+00	2025-02-02 21:25:54.316216+00	hkyIceMUzycFWniEV_uAAQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	581	xDnoafbsgW0s4ARufPWEPw	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	f	2025-02-14 16:19:54.031899+00	2025-02-14 16:19:54.031899+00	4BFGFprzk-NP06cIPvK5Tw	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	462	g7N69fUzOAzdF5ekD_7AaQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-31 18:58:27.362582+00	2025-01-31 23:56:33.364666+00	ElCwOi_5kQrqFwg_Bk_jBQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	585	v_VS69cZkosoiOqPGPpDdA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-15 11:45:05.328894+00	2025-02-15 11:45:05.328894+00	\N	7e44dafa-b3a1-47d2-8e0e-9b348df4d12f
00000000-0000-0000-0000-000000000000	590	JCWyKQjKDCRPnYEzmJJCZQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-16 13:31:05.307544+00	2025-02-16 13:31:05.307544+00	xAmhjRkq9DWPB1pP5hK1cQ	234fd2be-df9f-4c56-981d-2872a3650a86
00000000-0000-0000-0000-000000000000	500	BU376YEa9lr6dHAjbPzv1w	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-02 22:28:09.030302+00	2025-02-05 22:32:28.085153+00	uYJ3lDKQ9SM66hAzlvnE_g	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	457	QrzWxcCfnL5aUa0ApnqIaw	403b70e3-ff6f-472a-9f74-5a6155b8f241	f	2025-01-31 14:23:33.368934+00	2025-01-31 14:23:33.368934+00	\N	b0b52351-a283-446c-b4f2-7b59729806a4
00000000-0000-0000-0000-000000000000	589	hH_WxXf3EVzfezXJCyGwTQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-16 13:30:46.591629+00	2025-02-16 14:30:49.774456+00	QtNcXDFGTMCqlhEaLYDvmw	2263ff7f-36b9-4c34-8ae0-e9b578df4950
00000000-0000-0000-0000-000000000000	469	c-uv7cFU0oMpsuIyHLmkbA	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-01 02:00:05.23601+00	2025-02-01 15:47:30.007002+00	hZC8WRAcb7oq3-b78k28mQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	594	Nr6nyIrRGWwMY9bKkJwmOw	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-19 10:59:05.196036+00	2025-02-19 11:57:09.248838+00	\N	4608f4e2-0808-4636-b552-a7a25a190291
00000000-0000-0000-0000-000000000000	460	ElCwOi_5kQrqFwg_Bk_jBQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-01-31 17:40:01.363505+00	2025-01-31 18:58:27.358422+00	ehX9pJHYZeRzLbI68mRekw	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	599	btk9EfxaRJsMTa6GzgvCvw	7cc5166c-5406-4c68-aa14-fbbccf9fe96a	t	2025-02-19 12:20:53.633299+00	2025-02-19 14:08:56.545746+00	ILV-wIgX55nnXrejJ4x2zg	ddb9d6e0-39d5-4dce-8c5c-82dd8ffdb033
00000000-0000-0000-0000-000000000000	475	NkSHcCj-vIR0AqGVS8V5Ag	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-01 16:48:31.37033+00	2025-02-01 17:46:33.827942+00	J0zMJM9vr8ifrh4nH-wRBg	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	603	IWOmm3EkzdxwZk3AO29dSg	7cc5166c-5406-4c68-aa14-fbbccf9fe96a	f	2025-02-19 14:08:56.548684+00	2025-02-19 14:08:56.548684+00	btk9EfxaRJsMTa6GzgvCvw	ddb9d6e0-39d5-4dce-8c5c-82dd8ffdb033
00000000-0000-0000-0000-000000000000	487	UCMi92IqO2oqVCYRdvn7Aw	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-02 16:36:33.144848+00	2025-02-02 17:34:46.251137+00	SOxjaPSXrqLlO7VhaY3wFg	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	490	hkyIceMUzycFWniEV_uAAQ	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-02 17:34:46.25485+00	2025-02-02 18:44:14.228291+00	UCMi92IqO2oqVCYRdvn7Aw	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	498	uYJ3lDKQ9SM66hAzlvnE_g	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-02 21:25:54.321942+00	2025-02-02 22:28:09.027273+00	p-lye_kZdEBwVsn2yNpbEQ	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	458	38vn79lfxLzVL-g4v_Yprw	403b70e3-ff6f-472a-9f74-5a6155b8f241	t	2025-01-31 14:24:02.957537+00	2025-02-03 14:10:49.220424+00	\N	89916347-6098-422c-b6d3-123288377da3
00000000-0000-0000-0000-000000000000	501	h3PwUnvZCTOFnoOs6NaPYA	403b70e3-ff6f-472a-9f74-5a6155b8f241	t	2025-02-03 14:10:49.228711+00	2025-02-04 12:19:44.190707+00	38vn79lfxLzVL-g4v_Yprw	89916347-6098-422c-b6d3-123288377da3
00000000-0000-0000-0000-000000000000	552	4BFGFprzk-NP06cIPvK5Tw	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	t	2025-02-05 22:32:28.088821+00	2025-02-14 16:19:54.025964+00	BU376YEa9lr6dHAjbPzv1w	e25aecdc-e366-4629-a1f3-a26d39fb66e0
00000000-0000-0000-0000-000000000000	582	z3x9WqMzWNDvoIuCfo8trw	f1964cd5-b53a-4626-820b-673e558931cd	f	2025-02-14 16:23:40.82395+00	2025-02-14 16:23:40.82395+00	\N	261d8c66-991b-4ee3-972d-18ec87d38867
00000000-0000-0000-0000-000000000000	586	E8Zqji-L4aT-Z43fkAI4DQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-15 12:41:25.100697+00	2025-02-15 14:34:19.402938+00	rG0gogROe8Fj__yuNGrgMA	2263ff7f-36b9-4c34-8ae0-e9b578df4950
00000000-0000-0000-0000-000000000000	591	jWsiN8v2To7ItSmw_4taDg	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-16 14:30:49.779895+00	2025-02-16 17:19:10.228119+00	hH_WxXf3EVzfezXJCyGwTQ	2263ff7f-36b9-4c34-8ae0-e9b578df4950
00000000-0000-0000-0000-000000000000	574	_2JzX3jkSAfRklCBpRBn3Q	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-11 13:16:52.125521+00	2025-02-19 11:02:10.994387+00	_rIV4jQraewC638rErO7YQ	0079de13-bfe9-4f04-8548-69dd7d23090f
00000000-0000-0000-0000-000000000000	575	2eqyaHqkEvKI67qQUOSKFw	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-11 14:26:05.444169+00	2025-02-19 11:02:21.510107+00	gLby9p337KTItgCpt_q2sQ	de03c584-0db4-474e-8721-10b11a495622
00000000-0000-0000-0000-000000000000	596	C8UjzbapS-yK9TfdCPGMkg	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-19 11:02:21.510588+00	2025-02-19 12:29:54.996414+00	2eqyaHqkEvKI67qQUOSKFw	de03c584-0db4-474e-8721-10b11a495622
00000000-0000-0000-0000-000000000000	600	-ecxxX4tXTmDcUB10LbyqQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-19 12:29:55.005104+00	2025-02-19 12:29:55.005104+00	C8UjzbapS-yK9TfdCPGMkg	de03c584-0db4-474e-8721-10b11a495622
00000000-0000-0000-0000-000000000000	595	MX9E23GfMn7QTG3M-CHWXA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-19 11:02:11.003393+00	2025-02-19 13:02:04.646009+00	_2JzX3jkSAfRklCBpRBn3Q	0079de13-bfe9-4f04-8548-69dd7d23090f
00000000-0000-0000-0000-000000000000	604	WKdtfrZZNz8P1QXB7DuohA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-19 14:32:09.947261+00	2025-02-19 14:32:09.947261+00	bCdRecURS7NBzuHIpml-eA	0079de13-bfe9-4f04-8548-69dd7d23090f
00000000-0000-0000-0000-000000000000	536	pIeR9T7m0L8q810wSp2Egw	403b70e3-ff6f-472a-9f74-5a6155b8f241	t	2025-02-04 12:19:44.198281+00	2025-02-04 14:22:15.199044+00	h3PwUnvZCTOFnoOs6NaPYA	89916347-6098-422c-b6d3-123288377da3
00000000-0000-0000-0000-000000000000	538	WoqKMbP9LwmjZQ8nNILN5Q	403b70e3-ff6f-472a-9f74-5a6155b8f241	t	2025-02-04 14:22:15.203293+00	2025-02-06 09:50:57.875648+00	pIeR9T7m0L8q810wSp2Egw	89916347-6098-422c-b6d3-123288377da3
00000000-0000-0000-0000-000000000000	559	AAHBG2yXbiZl_3ttGeBPWw	403b70e3-ff6f-472a-9f74-5a6155b8f241	t	2025-02-06 09:50:57.876697+00	2025-02-06 10:49:06.422762+00	WoqKMbP9LwmjZQ8nNILN5Q	89916347-6098-422c-b6d3-123288377da3
00000000-0000-0000-0000-000000000000	562	kXKZSJ7EQGrOrcA4KTtmcQ	403b70e3-ff6f-472a-9f74-5a6155b8f241	t	2025-02-06 10:49:06.428068+00	2025-02-06 11:55:52.474911+00	AAHBG2yXbiZl_3ttGeBPWw	89916347-6098-422c-b6d3-123288377da3
00000000-0000-0000-0000-000000000000	563	D1IFbwtprXcSpSKK67LVfA	403b70e3-ff6f-472a-9f74-5a6155b8f241	f	2025-02-06 11:55:52.477631+00	2025-02-06 11:55:52.477631+00	kXKZSJ7EQGrOrcA4KTtmcQ	89916347-6098-422c-b6d3-123288377da3
00000000-0000-0000-0000-000000000000	564	frWZ1q9ydwuhcnQ_gXYfsQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-06 12:11:22.822865+00	2025-02-06 13:33:48.403531+00	\N	f328f5d7-4ebf-4d28-a389-216ef3c28d82
00000000-0000-0000-0000-000000000000	565	GR3vsqyZhvabOZrjVhmcAw	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-06 13:33:48.4087+00	2025-02-06 13:33:48.4087+00	frWZ1q9ydwuhcnQ_gXYfsQ	f328f5d7-4ebf-4d28-a389-216ef3c28d82
00000000-0000-0000-0000-000000000000	566	mTBWUiyIwiKGWhJ1rTYtZA	dabb2a2b-fcee-4c26-a8f1-3701325425e7	f	2025-02-06 13:55:16.181672+00	2025-02-06 13:55:16.181672+00	\N	b1cd7c85-3788-43dc-b5a8-41ff85530e1f
00000000-0000-0000-0000-000000000000	572	sO1uVhESBHtpoiyUMPVWzw	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-11 11:32:35.022152+00	2025-02-11 12:50:49.6142+00	\N	de03c584-0db4-474e-8721-10b11a495622
00000000-0000-0000-0000-000000000000	571	_rIV4jQraewC638rErO7YQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-11 11:32:27.509408+00	2025-02-11 13:16:52.121164+00	\N	0079de13-bfe9-4f04-8548-69dd7d23090f
00000000-0000-0000-0000-000000000000	573	gLby9p337KTItgCpt_q2sQ	dabb2a2b-fcee-4c26-a8f1-3701325425e7	t	2025-02-11 12:50:49.631422+00	2025-02-11 14:26:05.439001+00	sO1uVhESBHtpoiyUMPVWzw	de03c584-0db4-474e-8721-10b11a495622
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: activity_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."activity_logs" ("id", "user_id", "action_type", "entity_type", "entity_id", "details", "created_at") FROM stdin;
\.


--
-- Data for Name: auction_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auction_groups" ("id", "auction_number", "auction_date", "created_at") FROM stdin;
0092bd97-f00c-4eda-82d3-18c69cdc71df	VENTE-1735146943587	2024-12-25 17:15:43.587+00	2024-12-25 17:15:41.635935+00
4480d6ca-a810-48d4-8a5b-e33b5d6cf8de	VENTE-1735146954452	2024-12-25 17:15:54.452+00	2024-12-25 17:15:52.437658+00
7da9b540-61fc-4941-914b-a5b3adeaebd7	VENTE-1735152405111	2024-12-25 18:46:45.111+00	2024-12-25 18:46:43.096428+00
8bb7d0ff-416e-496e-9879-6ec9acab8a11	VENTE-1735152412720	2024-12-25 18:46:52.72+00	2024-12-25 18:46:50.643269+00
\.


--
-- Data for Name: depositors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."depositors" ("id", "name", "created_at") FROM stdin;
a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	Police Municipale	2024-11-30 15:24:36.728847+00
fb664d60-52de-485b-9351-a3b3dbc9d3ae	Gendarmerie	2024-11-30 15:24:36.728847+00
e5d4b5f7-6487-4cc8-a6ee-c76f9a38d640	Police Nationale	2024-11-30 15:24:36.728847+00
de196bdd-05b5-4ac3-b578-a4b503631236	Ait amira	2024-11-30 16:22:20.412907+00
\.


--
-- Data for Name: vehicle_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."vehicle_types" ("id", "name", "daily_rate", "created_at") FROM stdin;
42b9eb7a-e680-48ab-997c-74aadb109ae9	Camion	100.00	2024-11-30 15:24:36.728847+00
39e818a8-e21b-4fc0-8150-24c5625d0f40	Moto	10.00	2024-11-30 15:24:36.728847+00
5025ac23-f276-48b9-8b60-723447197000	Voiture	30.00	2024-11-30 15:24:36.728847+00
e1df0226-32d5-411a-bd6e-3b2053f4dee0	Remourque	150.00	2024-11-30 16:22:06.475659+00
700d1a32-0064-442d-bd07-02a79f05e251	hghfgh	15.00	2025-01-21 09:39:25.716841+00
0386522a-4335-4c88-8c83-1db9ce69f421	545454	444.00	2025-02-04 15:14:43.977285+00
\.


--
-- Data for Name: impounded_vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."impounded_vehicles" ("id", "vehicle_type_id", "license_plate", "depositor_id", "entry_date", "payment_receipt_number", "payment_date", "exit_date", "condition", "auction_group_id", "auction_date", "status", "created_at") FROM stdin;
02a2950e-f972-4839-a12e-e2fb104a3c6e	39e818a8-e21b-4fc0-8150-24c5625d0f40	54-w-5487	e5d4b5f7-6487-4cc8-a6ee-c76f9a38d640	2024-11-27 00:00:00+00	4444444	2024-12-17 00:00:00+00	2024-12-25 00:00:00+00	\N	\N	\N	exited	2024-12-17 17:21:57.526871+00
11f734a3-ce9c-4d56-a112-234e81eede4e	e1df0226-32d5-411a-bd6e-3b2053f4dee0	64-Q-545487	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2024-12-09 00:00:00+00	8745487	2024-12-20 00:00:00+00	2024-12-25 00:00:00+00	\N	\N	\N	exited	2024-12-18 13:32:47.169736+00
6e3d7483-357b-4892-8bd5-0105c4980923	e1df0226-32d5-411a-bd6e-3b2053f4dee0	33-q-5454	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2024-08-27 00:00:00+00	464	2024-12-21 00:00:00+00	2024-12-25 00:00:00+00	\N	\N	\N	exited	2024-12-20 23:17:20.567847+00
863eb2d3-caac-4d10-8cb8-56c6a75e02fd	39e818a8-e21b-4fc0-8150-24c5625d0f40	4845-D-45	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2024-11-06 00:00:00+00	454545	2024-12-02 00:00:00+00	2024-12-02 00:00:00+00	\N	\N	\N	exited	2024-11-30 16:25:28.943495+00
f8bf7855-95ca-41e3-84b7-627e0ebc7c1f	39e818a8-e21b-4fc0-8150-24c5625d0f40	33-A-548754	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2023-12-05 00:00:00+00	\N	\N	\N	moyen	\N	\N	auction	2024-12-25 17:55:53.870583+00
dcfafdac-8a03-4478-b687-faa9fe0b2e13	42b9eb7a-e680-48ab-997c-74aadb109ae9	54-S-5487	a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	2024-11-07 00:00:00+00	6546464	2024-12-05 00:00:00+00	2024-12-05 00:00:00+00	\N	\N	\N	exited	2024-11-30 16:25:48.945397+00
55d5ed57-9b56-4ce3-bb25-12512996608e	e1df0226-32d5-411a-bd6e-3b2053f4dee0	55-a-5454	de196bdd-05b5-4ac3-b578-a4b503631236	2024-11-27 00:00:00+00	55465465	2024-11-30 00:00:00+00	2024-12-07 00:00:00+00	\N	\N	\N	exited	2024-11-30 16:22:52.296356+00
671784c6-d365-4083-9d29-fae212d70bd2	5025ac23-f276-48b9-8b60-723447197000	33-A-2215	e5d4b5f7-6487-4cc8-a6ee-c76f9a38d640	2024-11-12 00:00:00+00	555555	2024-12-07 00:00:00+00	2024-12-07 00:00:00+00	\N	\N	\N	exited	2024-11-30 16:26:10.494494+00
b2a68ce5-9556-4cc0-8471-8ec2e1d6f6f7	42b9eb7a-e680-48ab-997c-74aadb109ae9	66-A-5487	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2022-05-04 00:00:00+00	548784	2024-12-07 00:00:00+00	2024-12-07 00:00:00+00	\N	\N	\N	exited	2024-12-04 23:03:12.481577+00
579406fa-a5a9-4122-a08c-88bd7a7fbed6	42b9eb7a-e680-48ab-997c-74aadb109ae9	blanhce 1M	a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	2024-12-28 00:00:00+00	564656	2024-12-29 00:00:00+00	2024-12-29 00:00:00+00	\N	\N	\N	exited	2024-12-28 20:25:28.092526+00
fa4acc7b-9cf0-4055-819f-d1c3fc7ac09a	5025ac23-f276-48b9-8b60-723447197000	31-W-54844	e5d4b5f7-6487-4cc8-a6ee-c76f9a38d640	2024-11-20 00:00:00+00	54874	2024-12-07 00:00:00+00	2024-12-12 00:00:00+00	\N	\N	\N	exited	2024-11-30 16:26:52.493928+00
9b7c5480-38d0-405b-81a6-60fcca68be61	39e818a8-e21b-4fc0-8150-24c5625d0f40	dfd-54-df	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2024-05-07 00:00:00+00	54874	2024-12-07 00:00:00+00	2024-12-17 00:00:00+00	\N	\N	\N	exited	2024-12-01 23:33:02.35527+00
7cccea30-f451-4e73-80bb-e8aac08100eb	39e818a8-e21b-4fc0-8150-24c5625d0f40	55-a-5484	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2024-11-30 00:00:00+00	55555	2024-12-12 00:00:00+00	2024-12-17 00:00:00+00	\N	\N	\N	exited	2024-11-30 16:46:28.913113+00
bd05fd93-31a0-43ee-bd83-28285e4619f0	39e818a8-e21b-4fc0-8150-24c5625d0f40	98-e-5454	de196bdd-05b5-4ac3-b578-a4b503631236	2024-10-01 00:00:00+00	\N	\N	2024-12-17 16:00:55.689+00	\N	\N	\N	exited	2024-11-30 16:47:17.731492+00
4cb2305d-7bc3-4322-943f-14ff7954e269	5025ac23-f276-48b9-8b60-723447197000	33-a-5454	a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	2024-12-17 00:00:00+00	54545454	2024-12-17 00:00:00+00	2024-12-17 17:21:41.55+00	\N	\N	\N	exited	2024-12-17 17:14:00.300441+00
9999e189-0620-41d7-87be-f7c2b2ead57f	39e818a8-e21b-4fc0-8150-24c5625d0f40	33-5454874	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2025-02-03 00:00:00+00	\N	\N	\N	\N	\N	\N	impounded	2025-02-19 11:28:02.599804+00
5c2a9502-8b95-4dcf-9203-8133443be6b3	42b9eb7a-e680-48ab-997c-74aadb109ae9	66-q-55487	a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	2024-12-17 00:00:00+00	54548	2024-12-17 00:00:00+00	2024-12-17 00:00:00+00	\N	\N	\N	exited	2024-12-17 17:21:24.872421+00
9abdf545-4f44-4a77-b253-38cf9eb823a8	42b9eb7a-e680-48ab-997c-74aadb109ae9	55844-a-54	de196bdd-05b5-4ac3-b578-a4b503631236	2025-01-28 00:00:00+00	55555	2025-02-06 00:00:00+00	2025-02-19 00:00:00+00	\N	\N	\N	exited	2025-02-04 12:23:20.275825+00
d498117d-6d19-447c-a185-e40c4ae1031a	e1df0226-32d5-411a-bd6e-3b2053f4dee0	33-s-6454	a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	2024-11-08 00:00:00+00	5487454	2025-01-02 00:00:00+00	2025-01-02 00:00:00+00	\N	\N	\N	exited	2025-01-02 17:48:52.035992+00
536305e3-9ec5-485d-8485-be4c363ea5c9	39e818a8-e21b-4fc0-8150-24c5625d0f40	54-A-5487454	e5d4b5f7-6487-4cc8-a6ee-c76f9a38d640	2024-12-18 00:00:00+00	54545454	2024-12-18 00:00:00+00	2024-12-18 00:00:00+00	\N	\N	\N	exited	2024-12-18 13:31:10.849537+00
49f06785-7711-4e23-8bfe-3f0c00d6905f	5025ac23-f276-48b9-8b60-723447197000	33-5454874	de196bdd-05b5-4ac3-b578-a4b503631236	2023-01-25 00:00:00+00	\N	\N	\N	moyen	\N	\N	auction	2024-12-25 16:51:25.049392+00
cdf2edb1-f6b6-481c-9386-b80bc06cd501	5025ac23-f276-48b9-8b60-723447197000	35-A-5487	de196bdd-05b5-4ac3-b578-a4b503631236	2025-01-02 00:00:00+00	54545	2025-01-21 00:00:00+00	2025-01-21 00:00:00+00	\N	\N	\N	exited	2025-01-02 17:47:32.654469+00
7aeed41b-f3d1-47a6-824c-7bc2e1b57274	39e818a8-e21b-4fc0-8150-24c5625d0f40	33-B-5454	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2024-10-09 00:00:00+00	25425	2025-01-22 00:00:00+00	2025-01-22 00:00:00+00	\N	\N	\N	exited	2025-01-02 17:47:57.348532+00
fe7f14fa-1f0f-45bb-b3d6-07bdc2137a75	39e818a8-e21b-4fc0-8150-24c5625d0f40	548548754	e5d4b5f7-6487-4cc8-a6ee-c76f9a38d640	2024-05-10 00:00:00+00	55445	2025-01-28 00:00:00+00	2025-01-28 00:00:00+00	\N	\N	\N	exited	2025-01-02 17:54:42.740166+00
b5a3a60d-3998-4308-80a3-528effdbc981	39e818a8-e21b-4fc0-8150-24c5625d0f40	33-545454	e5d4b5f7-6487-4cc8-a6ee-c76f9a38d640	2025-01-01 00:00:00+00	54485	2025-01-31 00:00:00+00	2025-01-31 00:00:00+00	\N	\N	\N	exited	2025-01-31 14:24:34.693899+00
bb036554-82e4-41a5-a05a-e86d30fdf818	5025ac23-f276-48b9-8b60-723447197000	4654645	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2025-01-14 00:00:00+00	5487	2025-02-01 00:00:00+00	2025-02-02 00:00:00+00	\N	\N	\N	exited	2025-01-31 14:51:07.656358+00
2d64c397-5589-4b86-ae9f-fbd0c50a67ad	39e818a8-e21b-4fc0-8150-24c5625d0f40	445555	a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	2025-02-01 00:00:00+00	54455	2025-02-03 00:00:00+00	\N	\N	\N	\N	pending_exit	2025-02-03 14:11:43.219534+00
9ec94bac-015e-415a-9593-e1502e20045a	42b9eb7a-e680-48ab-997c-74aadb109ae9	45544-a54	a4d3ebe8-9d55-4a32-aa21-59d5126dc13c	2025-01-29 00:00:00+00	45878	2025-02-04 00:00:00+00	2025-02-04 00:00:00+00	\N	\N	\N	exited	2025-02-04 14:22:44.470803+00
341e52cb-b867-4d06-85cf-5fe043b3a8f7	0386522a-4335-4c88-8c83-1db9ce69f421	54545-ض-4	fb664d60-52de-485b-9351-a3b3dbc9d3ae	2025-01-28 00:00:00+00	5454	2025-02-04 00:00:00+00	2025-02-04 00:00:00+00	\N	\N	\N	exited	2025-02-04 15:15:05.316209+00
\.


--
-- Data for Name: auction_sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auction_sales" ("id", "auction_group_id", "vehicle_id", "sale_receipt_number", "sale_amount", "sale_percentage", "sale_receipt_scan_url", "created_at") FROM stdin;
a38dfb70-3a27-492e-9773-1101860e40bc	0092bd97-f00c-4eda-82d3-18c69cdc71df	49f06785-7711-4e23-8bfe-3f0c00d6905f	5454874	458745	112554	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/bcec0452-5e9b-48af-993c-ce2cfc9a41a6.pdf	2024-12-25 17:15:41.838308+00
9665c5a5-17c3-4e15-bb92-46113ee97108	0092bd97-f00c-4eda-82d3-18c69cdc71df	49f06785-7711-4e23-8bfe-3f0c00d6905f	5454874	458745	112554	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/bcec0452-5e9b-48af-993c-ce2cfc9a41a6.pdf	2024-12-25 17:15:41.84955+00
bd902ed3-d192-4855-8e80-50d418a5f1c1	4480d6ca-a810-48d4-8a5b-e33b5d6cf8de	49f06785-7711-4e23-8bfe-3f0c00d6905f	54548	458745	542	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/483d5ce2-071d-4076-bc1e-adb91f0781e4.pdf	2024-12-25 17:15:52.581438+00
afd198f9-f673-482a-99e0-e4e723cbbaf7	4480d6ca-a810-48d4-8a5b-e33b5d6cf8de	49f06785-7711-4e23-8bfe-3f0c00d6905f	54548	458745	542	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/483d5ce2-071d-4076-bc1e-adb91f0781e4.pdf	2024-12-25 17:15:52.582449+00
2b0fedc5-ba66-4165-883e-7e361677df92	7da9b540-61fc-4941-914b-a5b3adeaebd7	f8bf7855-95ca-41e3-84b7-627e0ebc7c1f	5454	548745	8745	\N	2024-12-25 18:46:43.305654+00
31ac3678-cf6f-435d-b105-484cd694f8cd	7da9b540-61fc-4941-914b-a5b3adeaebd7	49f06785-7711-4e23-8bfe-3f0c00d6905f	5454	548745	8745	\N	2024-12-25 18:46:43.308414+00
a03977cc-cc0f-4235-b7e4-c98965c6d679	7da9b540-61fc-4941-914b-a5b3adeaebd7	49f06785-7711-4e23-8bfe-3f0c00d6905f	5454	548745	8745	\N	2024-12-25 18:46:43.312159+00
55344606-7f20-4df1-8582-4ac08f855070	7da9b540-61fc-4941-914b-a5b3adeaebd7	f8bf7855-95ca-41e3-84b7-627e0ebc7c1f	5454	548745	8745	\N	2024-12-25 18:46:43.466143+00
28446587-774e-47f7-ad07-e3f8fc0f10fe	8bb7d0ff-416e-496e-9879-6ec9acab8a11	49f06785-7711-4e23-8bfe-3f0c00d6905f	5454	548745	8745	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/6a6ce737-306c-41c0-a2b5-43d65acf90d9.pdf	2024-12-25 18:46:50.796503+00
869059a2-54f2-40f0-80ae-c5cc842a9673	8bb7d0ff-416e-496e-9879-6ec9acab8a11	f8bf7855-95ca-41e3-84b7-627e0ebc7c1f	5454	548745	8745	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/6a6ce737-306c-41c0-a2b5-43d65acf90d9.pdf	2024-12-25 18:46:50.797338+00
d4ade2fc-8285-4e19-a97f-3b5c57f275d0	8bb7d0ff-416e-496e-9879-6ec9acab8a11	f8bf7855-95ca-41e3-84b7-627e0ebc7c1f	5454	548745	8745	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/6a6ce737-306c-41c0-a2b5-43d65acf90d9.pdf	2024-12-25 18:46:50.796254+00
0ddab7ba-1296-4d83-bc58-1fc5b3124696	8bb7d0ff-416e-496e-9879-6ec9acab8a11	49f06785-7711-4e23-8bfe-3f0c00d6905f	5454	548745	8745	https://maxurnlhrtboixpaaspz.supabase.co/storage/v1/object/public/auction_receipts/6a6ce737-306c-41c0-a2b5-43d65acf90d9.pdf	2024-12-25 18:46:50.955474+00
\.


--
-- Data for Name: beverage_establishments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."beverage_establishments" ("id", "file_number", "establishment_name", "owner_name", "owner_id_number", "patent_number", "address", "phone", "annual_declaration_date", "estimated_revenue", "status", "created_at", "declaration_number", "evaluation_amount") FROM stdin;
f5347966-89fe-4f96-91df-618bc7b8464f	8	sfsgsdg	sdgsdg	jh545454	5487544	sdgsdg	064278754	2025-02-03	7552	active	2024-12-21 00:43:16.068444+00	888	0
f3afd6f8-adff-4193-aec1-8b0724e6ef69	10	cefe salam	said	jb45487	5454646	agadir	0645220158	\N	3000	closed	2024-12-12 14:57:37.815613+00	\N	0
fd756d51-59a8-484e-bf3f-a3e780feac34	5	tets	youssef	JB123456	54545	agadir 	1687545454	2024-12-01	3000	active	2024-12-02 14:47:02.124837+00	4444	0
e29aab79-c104-4853-8041-9ba97fb6b448	1	cafe ait amira	youssef	jh44444	5454544	centre ait amira	06452458784	\N	5000	closed	2018-12-02 00:58:43+00	\N	0
bcd48d65-fe92-42f0-a1b8-7a2654737486	11	casioko	khkjshkjh	54kjhkjhkh	545454			\N	0	closed	2024-12-28 22:13:50.450227+00	\N	0
3e1c55f2-8c37-4cb3-a786-83ceb5939395	2	Cafe Naser	AHMED SIR	JB654321	45784578	Centre ait amira cht ait baha	064207879	\N	3000	closed	2021-06-02 15:52:12+00	\N	0
1073fd3e-e126-4202-93b6-501bdfcf2361	9	said hh	saidss	jh45875	54875487	jgjgdutjgd	0642707879	\N	4857	closed	2022-01-22 18:17:09+00	\N	0
a77e7c2f-45d2-462d-b682-c67d40570913	20	QQQQQ	QQQQQQQQ	QQ545454	54545454	QQQQQ5454QQQQ54	5454545454	2022-02-08	5454	active	2023-12-28 22:32:42+00	ddddd	0
\.


--
-- Data for Name: beverage_closures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."beverage_closures" ("id", "establishment_id", "closure_date", "reason", "created_at") FROM stdin;
002e1652-9acf-4ce4-8796-d6dedaa73814	f5347966-89fe-4f96-91df-618bc7b8464f	2024-12-28	changement 	2024-12-28 22:28:14.190085+00
e5b3206c-4ef5-467f-acf2-68d82fc8bfd6	a77e7c2f-45d2-462d-b682-c67d40570913	2024-12-29	vbcvbfdb 	2024-12-28 23:05:55.237691+00
b8cb5a1d-c9b6-47c1-8cb2-604aa5404383	a77e7c2f-45d2-462d-b682-c67d40570913	2024-12-29	xzcxczcx	2024-12-28 23:30:25.933729+00
07ce7a8e-4b60-40e2-b1bb-b2b979e535cf	a77e7c2f-45d2-462d-b682-c67d40570913	2024-12-11	xcxzczx	2024-12-28 23:36:56.62153+00
2f5d0834-32cf-4c4e-bf23-71b584492970	f5347966-89fe-4f96-91df-618bc7b8464f	2025-01-07	kjhkh kjhkh kjhkjh	2025-01-07 03:03:50.03003+00
\.


--
-- Data for Name: beverage_declarations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."beverage_declarations" ("id", "establishment_id", "year", "declaration_number", "declaration_date", "created_at") FROM stdin;
\.


--
-- Data for Name: beverage_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."beverage_payments" ("id", "establishment_id", "year", "quarter", "revenue", "odp_amount", "declaration_penalty", "total_amount", "receipt_number", "payment_date", "created_at") FROM stdin;
9a60f3b6-2198-46c4-b247-d10db50fe233	e29aab79-c104-4853-8041-9ba97fb6b448	2024	4	5000	0	0	500	548454	2024-12-05	2024-12-05 22:00:04.376501+00
19e4ed62-d03d-491b-b928-d65d974ccd67	3e1c55f2-8c37-4cb3-a786-83ceb5939395	2023	3	3000	0	63	363	54875	2024-12-07	2024-12-07 15:54:56.121779+00
3a411c44-8847-4845-b8af-06fa6f7b5e57	fd756d51-59a8-484e-bf3f-a3e780feac34	2024	4	544	0	0	54.400000000000006	5454	2024-12-10	2024-12-10 18:29:22.087489+00
9bf1900e-2d88-49a0-80b1-8d387e1bf744	3e1c55f2-8c37-4cb3-a786-83ceb5939395	2023	4	3000	0	58.5	358.5	4845454	2024-12-10	2024-12-10 18:29:47.115409+00
af32ce15-b17e-4487-8b77-0858f2d61f8f	3e1c55f2-8c37-4cb3-a786-83ceb5939395	2024	1	3000	0	54	354	4845454	2024-12-10	2024-12-10 18:29:47.33964+00
5648b47c-cdfb-4a42-bc00-3279464222ff	3e1c55f2-8c37-4cb3-a786-83ceb5939395	2024	3	3000	0	45	345	4845454	2024-12-10	2024-12-10 18:29:47.670394+00
082262fa-9d91-412c-ae29-d59172601441	3e1c55f2-8c37-4cb3-a786-83ceb5939395	2024	4	3000	0	0	300	4845454	2024-12-10	2024-12-10 18:29:47.816229+00
27a9cbce-e162-4a26-a07a-1ae9ff0a46d6	f3afd6f8-adff-4193-aec1-8b0724e6ef69	2024	4	3000	0	0	300	5555	2024-12-12	2024-12-12 15:05:29.536261+00
b41e24b4-978b-49a6-93f1-d7c0edc1c61d	3e1c55f2-8c37-4cb3-a786-83ceb5939395	2000	2	3000	0	49.5	349.5	4845454	2024-12-10	2024-12-10 18:29:47.502707+00
13e8f1f2-a2cc-4c88-83de-4e1160952ad9	a77e7c2f-45d2-462d-b682-c67d40570913	2024	4	0	0	0	0	\N	2024-12-28	2024-12-28 23:13:12.256965+00
9303e365-04e9-47fe-8a7f-a259139acff6	a77e7c2f-45d2-462d-b682-c67d40570913	2023	4	5454	0	54.54	659.934	5488448	2024-12-29	2024-12-28 23:16:42.195776+00
25a167fb-0d3a-4ad2-8830-07cd30020c07	a77e7c2f-45d2-462d-b682-c67d40570913	2024	1	5454	0	54.54	651.7529999999999	5488448	2024-12-29	2024-12-28 23:16:42.59611+00
d1e5e1cc-afa9-4e77-be00-b280d0711d1e	f5347966-89fe-4f96-91df-618bc7b8464f	2024	4	0	0	0	0	\N	2024-12-28	2024-12-28 23:36:12.583709+00
28d0c6df-dd2d-4363-a5de-75276c0c2e13	fd756d51-59a8-484e-bf3f-a3e780feac34	2025	1	3000	0	0	300	5454	2025-01-02	2025-01-02 19:01:43.475183+00
cfdf5a23-d4e6-4ea8-8426-cf69519df2cc	f5347966-89fe-4f96-91df-618bc7b8464f	2025	1	7552	0	0	755.2	5487	2025-01-02	2025-01-02 19:10:07.626127+00
\.


--
-- Data for Name: beverage_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."beverage_settings" ("id", "tax_rate", "created_at", "valid_from", "valid_to", "declaration_deadline_month", "declaration_deadline_day", "late_declaration_penalty_rate") FROM stdin;
12b9c0fa-6386-4853-aaeb-7b83f3c26f4a	10	2025-02-15 18:56:46.144354+00	2025-02-15	\N	3	3	10
\.


--
-- Data for Name: land_zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."land_zones" ("id", "name", "rate", "created_at") FROM stdin;
9224bf9d-4d7a-4667-b6de-09aa9a60dc92	Zone logement individuel	3.5	2024-11-30 17:50:58.523379+00
e8294f16-c1e6-4454-a759-63cf420be5ab	Zone industrielle	3.5	2024-11-30 17:50:58.523379+00
cdedaaac-1ed0-4204-89d4-8ba681f2d13f	Zone commerciale	3.5	2024-11-30 17:50:58.523379+00
cb6dcd88-a9c8-4942-ace9-f11d5d3a03c9	Zone immeubles	3.5	2024-11-30 17:50:58.523379+00
\.


--
-- Data for Name: subdivisions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."subdivisions" ("id", "name", "created_at") FROM stdin;
fc66c790-8df5-4c51-81c5-28e4a1baf020	Lotissement Al Amal	2024-12-13 09:23:00.238285+00
f8d3170e-2b18-4d7d-acb5-f68d50f5d82d	Lotissement Al Iskane	2024-12-13 09:23:24.192605+00
9c4c8c30-d958-4f90-b880-7d21a4e29228	Lotissenennt Titrite	2024-12-29 00:15:54.602766+00
\.


--
-- Data for Name: lands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."lands" ("id", "file_number", "location", "lot_number", "title_deed", "surface", "zone_id", "owner_name", "owner_id_number", "address", "phone", "acquisition_date", "status", "created_at", "annual_declaration_number", "annual_declaration_date", "exemption_status", "exemption_start_date", "exemption_end_date", "subdivision_id", "evaluation_amount") FROM stdin;
4099f1f0-83d3-4bf0-9073-a0284166e734	6	ggg	ccc	cccc	150	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	ggg	gggg	ggg	ggg	2024-12-12	active	2024-12-14 19:17:55.088492+00	5778	2024-03-18	none	\N	\N	fc66c790-8df5-4c51-81c5-28e4a1baf020	0
56db3f1a-b7a0-4be4-b24d-5f8bfadaf07a	7	Lotisemen amal	25	80/88888	21	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	ddddaaa	df54545454	hbkjgkgkjg	545454874	2024-12-18	active	2024-12-28 21:13:10.267616+00	\N	\N	construction	2024-12-28	2027-12-28	\N	0
9d8adb57-d965-41c8-ba0f-3e449504fa5e	1	Lotissement Iskane	545	80/5554	80	cb6dcd88-a9c8-4942-ace9-f11d5d3a03c9	ahmed	jb454545	agadir	0642707879	2022-01-05	deleted	2024-12-04 23:26:36.671676+00	451154	2024-12-05	none	\N	\N	fc66c790-8df5-4c51-81c5-28e4a1baf020	0
9977bd8d-3ecf-4a3d-b7df-604550a900cf	8	dfsdf	444	555555	555	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	sdfsdf	dfsdf	dfsdf	55555555	2019-01-07	active	2024-12-14 19:34:23.691518+00	\N	\N	construction	2024-12-18	2027-12-18	f8d3170e-2b18-4d7d-acb5-f68d50f5d82d	0
d02ae705-019e-49b2-bf8e-22e4d4188985	9	LOTTISEMENT ISKANE N 255	225	10001/80	63	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	AL OMTAN SARL	14049/AGADIR	AGADIR	\N	2022-01-01	active	2025-01-10 17:44:45.276334+00	ddf	2025-02-01	none	\N	\N	f8d3170e-2b18-4d7d-acb5-f68d50f5d82d	0
eba6c6cb-1830-4ab7-89c3-e616ccbe0a89	10	titrit	1	1515	150	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	al omran 	14049	agadir	055555555	2022-01-01	active	2025-01-05 01:59:22.53771+00	\N	\N	none	\N	\N	9c4c8c30-d958-4f90-b880-7d21a4e29228	0
f1ba6f14-5966-471e-871c-f5129e762dc6	11	iskan 	55	81/5554	80	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	ahmed	j21654	14 agadie	064878787	2000-01-18	active	2000-12-18 15:14:41+00	15151	2024-01-10	none	\N	\N	\N	0
f26bc6ec-578d-419e-9439-472711751c6a	12	kjhkjhkjhkh	584	84/858585	150	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	saisss 	jjh54855	ggg gggg	0645457844	2022-05-11	active	2025-01-05 00:10:43.644714+00	54745	2025-02-01	none	\N	\N	f8d3170e-2b18-4d7d-acb5-f68d50f5d82d	0
3e385552-60fb-481b-8385-731655cd5cc0	F000047	TITRIT LOT 1	11111	11111	8358.4	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	STE AL OMRAN	14049	AGADIR	0666666666	2022-01-11	active	2025-02-11 18:10:36.230567+00	\N	\N	none	\N	\N	9c4c8c30-d958-4f90-b880-7d21a4e29228	0
d28905e4-a341-4524-acdc-6aa5d73b0f8f	3	amal	5	80/2225	85	cb6dcd88-a9c8-4942-ace9-f11d5d3a03c9	yyyy	5454874	jkhkghjkgj	064587454	2022-01-05	active	2024-12-05 22:24:21.319134+00	5	2024-01-03	construction	2022-11-05	2025-11-05	fc66c790-8df5-4c51-81c5-28e4a1baf020	0
3b4e7ecb-e2ec-4710-bf5f-74662a8791d0	2	iskan	54	80/5548	80	cb6dcd88-a9c8-4942-ace9-f11d5d3a03c9	yessseeef	jb1234587	jgghdghg	465467984654	2024-12-03	deleted	2024-12-05 21:54:51.367503+00	545545	2024-01-10	construction	2024-12-05	2027-12-05	f8d3170e-2b18-4d7d-acb5-f68d50f5d82d	0
ad6f001a-cce1-447f-80b5-d6578398cb81	4	jhjhdy	2	848484	54	cb6dcd88-a9c8-4942-ace9-f11d5d3a03c9	zcdasd	asd45454	fsdfds	1522212121	2021-01-01	deleted	2024-12-05 22:47:42.801464+00	\N	\N	permanent	2024-12-14	\N	f8d3170e-2b18-4d7d-acb5-f68d50f5d82d	0
\.


--
-- Data for Name: building_permits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."building_permits" ("id", "land_id", "permit_number", "issue_date", "expiry_date", "status", "created_at") FROM stdin;
68ff71d0-ec2a-4e89-bb0f-9919b0d113fe	3b4e7ecb-e2ec-4710-bf5f-74662a8791d0	30/2005	2024-12-05	2027-12-05	active	2024-12-05 22:21:35.812987+00
d79afade-4ab9-4f6a-b684-c08e45ad0fe4	d28905e4-a341-4524-acdc-6aa5d73b0f8f	1/2022	2022-11-05	2025-11-05	active	2024-12-05 22:30:32.31086+00
e9ecd543-ba65-412b-bb43-629ca0435fc8	ad6f001a-cce1-447f-80b5-d6578398cb81	12/2021	2021-01-02	2024-01-02	active	2024-12-05 22:48:19.184502+00
dd2d1659-9084-4e5b-b92d-6fbd5d951868	9977bd8d-3ecf-4a3d-b7df-604550a900cf	5/22202	2024-12-18	2027-12-18	active	2024-12-18 14:05:14.086336+00
792f5def-e384-4511-9e19-38fb269a0787	56db3f1a-b7a0-4be4-b24d-5f8bfadaf07a	548454	2024-12-28	2027-12-28	active	2024-12-28 21:32:57.434542+00
\.


--
-- Data for Name: declaration_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."declaration_numbers" ("id", "declaration_type", "year", "number", "created_at") FROM stdin;
\.


--
-- Data for Name: impound_managers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."impound_managers" ("id", "first_name", "last_name", "created_at") FROM stdin;
ec17b144-82e3-4f6b-956d-d9a0ddc84b75	hassan	el mouden	2024-12-17 13:36:51.030111+00
cc6f7bef-5ca2-4744-b976-94c5851c1ac1	\N	\N	2024-12-17 14:43:16.502922+00
403b70e3-ff6f-472a-9f74-5a6155b8f241	\N	\N	2025-01-31 14:23:33.32281+00
7cc5166c-5406-4c68-aa14-fbbccf9fe96a	\N	\N	2025-02-19 11:16:53.100216+00
\.


--
-- Data for Name: land_declarations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."land_declarations" ("id", "land_id", "year", "declaration_number", "declaration_date", "is_null_declaration", "created_at") FROM stdin;
094df769-6206-4b79-a935-1bbacea4b3c0	f26bc6ec-578d-419e-9439-472711751c6a	2022	\N	\N	t	2025-02-01 01:35:42.359552+00
5b839c28-6e70-4972-94c3-92067087eb05	f26bc6ec-578d-419e-9439-472711751c6a	2024	45454	2025-02-01	f	2025-02-01 01:36:09.989176+00
d2e75cfd-66ea-4056-a4ef-3e613e391f32	9d8adb57-d965-41c8-ba0f-3e449504fa5e	2024	5454	2024-02-01	f	2025-02-01 01:37:38.407276+00
7b65893d-b323-4f4a-9442-a94e2648fb30	f1ba6f14-5966-471e-871c-f5129e762dc6	2024	6556565	2024-02-01	f	2025-02-01 01:38:21.547442+00
3a4a29c3-0dbd-48af-ae24-5ed3734f145e	d02ae705-019e-49b2-bf8e-22e4d4188985	2022	\N	\N	t	2025-02-01 01:48:18.436205+00
7c4d99ad-744f-4f98-9a1a-5edd83c555d9	d02ae705-019e-49b2-bf8e-22e4d4188985	2023	\N	\N	t	2025-02-01 01:48:26.30431+00
bb8fda3a-53e1-4a62-9f5c-f70e00ee732c	d02ae705-019e-49b2-bf8e-22e4d4188985	2024	54544	2024-01-01	f	2025-02-01 01:48:45.626+00
5ee02b8c-47c3-4787-9772-ee310b802e25	d02ae705-019e-49b2-bf8e-22e4d4188985	2025	484	2025-02-01	f	2025-02-01 01:50:06.854088+00
04d388ba-c388-4989-985c-3df84bd043fb	eba6c6cb-1830-4ab7-89c3-e616ccbe0a89	2023	\N	\N	t	2025-02-01 02:01:53.848656+00
d0285287-4914-420c-8c34-a35b86feb57b	eba6c6cb-1830-4ab7-89c3-e616ccbe0a89	2022	\N	\N	t	2025-02-01 02:02:11.344881+00
6ea87794-92f6-46f7-9592-122d31a542c2	eba6c6cb-1830-4ab7-89c3-e616ccbe0a89	2024	4544	2024-02-07	f	2025-02-01 02:02:38.598639+00
65d2c3e6-d736-4ed3-89b5-ae4c506eb54c	f26bc6ec-578d-419e-9439-472711751c6a	2023	\N	\N	t	2025-02-01 15:50:09.623794+00
1c937c1b-eb78-4779-9c5a-e9145537c6e4	9977bd8d-3ecf-4a3d-b7df-604550a900cf	2024	55555	2024-01-05	f	2025-02-05 11:06:22.786729+00
\.


--
-- Data for Name: land_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."land_payments" ("id", "land_id", "year", "amount", "penalty", "surcharge", "fine", "total_amount", "receipt_number", "payment_date", "created_at") FROM stdin;
ccec8be9-7ead-4a2c-a20d-77e2b4c6fb2f	d28905e4-a341-4524-acdc-6aa5d73b0f8f	2022	297.5	29.75	47.6	500	874.85	5555	2024-12-14	2024-12-14 17:42:41.08084+00
a951bbbb-4335-47c5-9b19-923be8bdda9a	ad6f001a-cce1-447f-80b5-d6578398cb81	2021	189	18.900000000000002	30.240000000000002	500	738.14	5454545	2024-12-14	2024-12-14 18:13:41.54818+00
63a71957-4f8d-45ee-bec0-f29f4423fbe7	f1ba6f14-5966-471e-871c-f5129e762dc6	2022	280	28	44.8	500	852.8	757575	2024-12-21	2024-12-20 23:20:16.183714+00
91f9b4bd-28c8-4114-81fb-c0953458a1e5	d28905e4-a341-4524-acdc-6aa5d73b0f8f	2023	297.5	29.75	47.6	500	874.85	654554	2024-12-21	2024-12-21 01:12:21.379083+00
d76e5a64-2cb5-4253-baac-535712f60d9a	9977bd8d-3ecf-4a3d-b7df-604550a900cf	2019	1942.5	194.25	310.8	500	2947.55	654654	2024-12-21	2024-12-21 01:14:28.975254+00
cca38c11-b558-4322-aee0-1bcfec9f3bea	9977bd8d-3ecf-4a3d-b7df-604550a900cf	2020	1942.5	194.25	310.8	500	2947.55	654654	2024-12-21	2024-12-21 01:14:29.150267+00
4d100666-f960-443e-9651-d7f4659aafa9	9977bd8d-3ecf-4a3d-b7df-604550a900cf	2021	1942.5	194.25	310.8	500	2947.55	654654	2024-12-21	2024-12-21 01:14:29.311661+00
a49d8f8b-afa7-40da-b3a9-e840d33bc287	d28905e4-a341-4524-acdc-6aa5d73b0f8f	2024	297.5	29.75	31.2375	500	858.4875	xcxz	2025-01-05	2025-01-04 23:32:14.843652+00
e82fba10-d571-46b5-9411-a0aed056d956	d28905e4-a341-4524-acdc-6aa5d73b0f8f	2025	297.5	0	0	500	797.5	xcxz	2025-01-05	2025-01-04 23:32:15.162602+00
b325c0ac-8ae3-43ac-ad80-742eae784a18	f1ba6f14-5966-471e-871c-f5129e762dc6	2000	280	28	29.4	500	837.4	5555	2025-01-05	2025-01-05 00:13:05.563621+00
039e2377-af28-488f-bb8e-4e9c0a2bda9a	f26bc6ec-578d-419e-9439-472711751c6a	2022	315	31.5	69.30000000000001	500	915.8	5454	2025-01-05	2025-01-05 01:50:51.005332+00
42623aa6-a92c-4c1b-ab30-97f327f89303	f26bc6ec-578d-419e-9439-472711751c6a	2023	315	31.5	50.4	500	896.9	fgdfg	2025-01-05	2025-01-05 01:56:20.296988+00
6b9d02a8-45d8-4679-8025-01fb79ab1c63	4099f1f0-83d3-4bf0-9073-a0284166e734	2024	525	52.5	52.5	0	630	hhhh	2025-01-05	2025-01-05 03:08:03.536577+00
b63ace83-438c-4986-9f1b-5fa14fda1ef7	4099f1f0-83d3-4bf0-9073-a0284166e734	2025	525	0	0	0	525	hhhh	2025-01-05	2025-01-05 03:08:03.733915+00
911964a5-6f15-4a5b-a620-a351c9118fba	56db3f1a-b7a0-4be4-b24d-5f8bfadaf07a	2024	73.5	7.3500000000000005	7.3500000000000005	500	588.2	8454	2025-01-06	2025-01-06 17:53:37.46397+00
8b10bf5b-7876-4d1c-b8af-4be43aecb616	d02ae705-019e-49b2-bf8e-22e4d4188985	2022	220.5	22.05	48.51	500	791.06	54874	2025-01-10	2025-01-10 18:20:04.426307+00
52dabca2-e307-4b46-8073-98fcc31c962e	d02ae705-019e-49b2-bf8e-22e4d4188985	2023	220.5	22.05	36.3825	500	778.9325	ddddd	2025-02-01	2025-02-01 01:27:28.493501+00
a37f3381-4628-4c16-87ef-8e0d640224bd	56db3f1a-b7a0-4be4-b24d-5f8bfadaf07a	2025	73.5	0	0	0	73.5	55555	2025-02-02	2025-02-02 17:09:59.961721+00
\.


--
-- Data for Name: land_surveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."land_surveys" ("id", "location", "lot_number", "title_deed", "surface", "zone_id", "owner_name", "owner_id_number", "address", "phone", "survey_date", "status", "created_at", "declaration_number", "declaration_date") FROM stdin;
9c0334e8-72d7-45cd-8270-011205dac35b	iskan 	55	81/5554	80	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	ahmed	j21654	14 agadie	064878787	2022-01-18	transferred	2024-12-18 14:14:33.687587+00	\N	\N
d41f1b55-5a95-4c53-931e-149db3838d24	Lotisemen amal	25	80/88888	21	9224bf9d-4d7a-4667-b6de-09aa9a60dc92	karim	jb124579	agadir	064787454	2024-12-18	transferred	2024-12-18 14:13:25.29231+00	\N	\N
\.


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notes" ("id", "title", "content", "created_at", "user_id") FROM stdin;
\.


--
-- Data for Name: notice_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notice_templates" ("id", "content", "created_at", "updated_at", "name", "logo_url") FROM stdin;
test	<p class="ql-align-right ql-direction-rtl">وزارة الداخلية</p><p class="ql-align-right ql-direction-rtl">عمالة إقليم شتوكة آيت باها</p><p class="ql-align-right ql-direction-rtl">جماعة آيت عميرة</p><p class="ql-align-right ql-direction-rtl"><br></p><p class="ql-align-center ql-direction-rtl">إشعار بالأداء</p><p class="ql-align-center ql-direction-rtl"><br></p><p class="ql-align-right ql-direction-rtl">السيد(ة): {nom}</p><p class="ql-align-right ql-direction-rtl">رقم البطاقة الوطنية: {cin}</p><p class="ql-align-right ql-direction-rtl">العنوان: {adresse}</p><p class="ql-align-right ql-direction-rtl">تحية طيبة وبعد، نحيطكم علما أنه تبين من خلال سجلاتنا أن ذمتكم المالية لا تزال مشغولة بالمبلغ التالي:</p><p class="ql-align-right ql-direction-rtl">- المبلغ الإجمالي: {montant} درهم</p><p class="ql-align-right ql-direction-rtl">- نوع الرسوم: {articles}</p><p class="ql-align-right ql-direction-rtl">لذا، نطلب منكم تسوية وضعيتكم في أقرب الآجال تفاديا لأي إجراءات قانونية. وتقبلوا منا فائق التقدير والاحترام. حرر في آيت باها بتاريخ: .................. رئيس المجلس الجماعي`</p>	2025-01-04 03:54:48.068872+00	2025-01-11 02:44:46.802+00	test	\N
tres2	وزارة الداخلية\nعمالة إقليم شتوكة آيت باها\nجماعة آيت عميرة hhhh\n\n\n                                                       __      ## **إشعار بالأداء**##__\n\n\n\n                                                           السيد(ة): {nom}\n                                                          رقم البطاقة الوطنية: {cin}\n                                                          العنوان: {adresse}\n\n\nتحية طيبة وبعد،\nنحيطكم علما أنه تبين من خلال سجلاتنا أن ذمتكم المالية لا تزال مشغولة بالمبلغ التالي:\n- المبلغ الإجمالي: {montant} درهم\n- نوع الرسوم: {articles}\nلذا، نطلب منكم تسوية وضعيتكم في أقرب الآجال تفاديا لأي إجراءات قانونية.\n                        وتقبلوا منا فائق التقدير والاحترام.\n                                                            حرر في آيت باها بتاريخ: ..................\n                                                                  رئيس المجلس الجماعي`	2025-01-04 03:55:30.530239+00	2025-01-04 04:20:55.645+00	tres2	\N
default	<h2 class="ql-align-right ql-direction-rtl">وزارة الداخلية</h2><h2 class="ql-align-right ql-direction-rtl">عمالة إقليم شتوكة آيت</h2><h2 class="ql-align-right ql-direction-rtl">باها جماعة آيت عميرة</h2><p class="ql-align-right ql-direction-rtl"><br></p><h1 class="ql-align-center ql-direction-rtl"><u style="color: rgb(230, 0, 0);">إشعار بالأداء hh</u></h1><h2 class="ql-align-center ql-direction-rtl"><br></h2><h2 class="ql-align-center">&nbsp;السيد: <span style="color: rgb(102, 102, 102);">{nom}</span></h2><h2 class="ql-direction-rtl ql-align-center">رقم البطاقة الوطنية:<span style="color: rgb(102, 102, 102);">{cin}</span></h2><h2 class="ql-align-center">العنوان: <span style="color: rgb(102, 102, 102);">{adresse}</span></h2><h2 class="ql-direction-rtl ql-align-right"><br></h2><h2 class="ql-direction-rtl ql-align-right">،تحية طيبة وبعد :نحيطكم علما أنه تبين من خلال سجلاتنا أن ذمتكم المالية لا تزال مشغولة بالمبلغ التالي المبلغ الإجمالي:</h2>	2025-01-04 03:18:30.624519+00	2025-01-04 05:13:24.86+00	\N	\N
\.


--
-- Data for Name: occupancy_permits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."occupancy_permits" ("id", "building_permit_id", "permit_number", "issue_date", "created_at") FROM stdin;
14ad09e8-2d6a-49bc-8960-b9e1d006bcd9	e9ecd543-ba65-412b-bb43-629ca0435fc8	5	2024-12-14	2024-12-14 19:31:12.263978+00
\.


--
-- Data for Name: occupation_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."occupation_types" ("id", "name", "rate", "created_at") FROM stdin;
5d6b091c-a109-4a86-8cb2-c26d2d3a2d1d	Étalage	30	2024-11-30 18:28:46.070235+00
0bdb2ad7-4f1c-4c14-80c9-26f5b9ab0b6c	Kiosque	100	2024-11-30 18:28:46.070235+00
fe6c2a0e-2fc0-462f-a8ed-8c401e1a831a	Terrasse café	30	2024-11-30 18:28:46.070235+00
\.


--
-- Data for Name: temporary_occupations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."temporary_occupations" ("id", "file_number", "owner_name", "owner_id_number", "occupation_type_id", "surface", "address", "phone", "status", "created_at", "evaluation_amount") FROM stdin;
d7159cdb-6141-4cb7-8877-d9f0ae4e45b9	1	youssef	jb123456	0bdb2ad7-4f1c-4c14-80c9-26f5b9ab0b6c	15	ahadir	064254870	active	2024-11-30 18:41:23.667594+00	0
c66eaf9f-458a-4ad3-8c81-745da89c5609	2	said	jb654321	fe6c2a0e-2fc0-462f-a8ed-8c401e1a831a	10	centre	0648124187	active	2024-12-04 22:59:24.406724+00	0
0df9446e-6e66-4305-94aa-9d772f80c8e3	3	samir	jb24578	fe6c2a0e-2fc0-462f-a8ed-8c401e1a831a	25	centre	064270787	active	2024-12-16 23:39:42.669805+00	0
8bcfcc3d-d604-46ee-85b7-687135cdf1e2	4	hhhhhhh	kj548798	0bdb2ad7-4f1c-4c14-80c9-26f5b9ab0b6c	30	jhjh	jhjh	active	2024-01-01 17:11:53+00	0
\.


--
-- Data for Name: occupation_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."occupation_payments" ("id", "occupation_id", "year", "quarter", "amount", "receipt_number", "payment_date", "created_at") FROM stdin;
f7a258c4-e80b-4492-99f1-5d3ec0ed737f	d7159cdb-6141-4cb7-8877-d9f0ae4e45b9	2024	1	1000	54878454	2024-11-30	2024-11-30 18:42:34.718752+00
91e85984-a577-4702-8ed7-363e83313a98	d7159cdb-6141-4cb7-8877-d9f0ae4e45b9	2024	4	1500	gf	2024-12-05	2024-12-04 23:00:37.289284+00
da6d75f2-606b-4db3-bbde-8df6b40978b5	c66eaf9f-458a-4ad3-8c81-745da89c5609	2024	4	500	54545	2024-12-04	2024-12-04 23:01:05.153184+00
9ba226cf-2d30-49c2-a4e5-b2243160ab1e	0df9446e-6e66-4305-94aa-9d772f80c8e3	2024	4	750	sdfsdf	2024-12-17	2024-12-16 23:43:33.050448+00
f5cdfb55-538d-4dbf-abee-1328719368f2	8bcfcc3d-d604-46ee-85b7-687135cdf1e2	2024	1	3540	57845	2024-12-19	2024-12-19 17:17:28.502697+00
5aed118f-cebf-48fb-984f-a843b273084d	8bcfcc3d-d604-46ee-85b7-687135cdf1e2	2024	2	3495	545484	2024-12-20	2024-12-20 18:50:34.799827+00
88957f8d-de8b-4dcb-aae9-4e07e457d8ae	d7159cdb-6141-4cb7-8877-d9f0ae4e45b9	2025	1	1500	czc	2025-01-05	2025-01-05 03:17:42.37699+00
\.


--
-- Data for Name: other_articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."other_articles" ("id", "title", "status", "evaluation_amount", "created_at") FROM stdin;
8ad9c381-ae3b-4c7d-b737-5e633ef6ca24	eau	active	0	2025-01-05 20:26:12.19504+00
7b962bb3-53a0-42d5-8085-3b9513c9e5f4	test	active	0	2025-01-06 00:42:45.838341+00
4aad03b1-4e9d-44f4-90ae-faf3f5dcc5a7	test 2	active	0	2025-01-06 00:58:16.839565+00
23ed17cc-4045-4dc8-946a-08124e3cfe25	hhhh hhhhhh hhhhhhhhh hhhhhhhhh hhhhhh	active	0	2025-01-06 01:13:10.442737+00
\.


--
-- Data for Name: other_article_forecasts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."other_article_forecasts" ("id", "article_id", "year", "amount", "created_at") FROM stdin;
23dbb667-afc2-4deb-8bb4-0dbca9018eae	8ad9c381-ae3b-4c7d-b737-5e633ef6ca24	2025	222222	2025-01-05 20:26:28.733391+00
c6de511c-4a9a-4b1b-b347-4541c481174c	8ad9c381-ae3b-4c7d-b737-5e633ef6ca24	2026	788884	2025-01-06 00:31:03.238428+00
ed5ec02a-4d55-4ed4-a38d-288a41809ed9	7b962bb3-53a0-42d5-8085-3b9513c9e5f4	2025	555555	2025-01-06 00:48:51.986646+00
23e9dbef-4adb-4f92-a96d-7e8bf4738a4c	4aad03b1-4e9d-44f4-90ae-faf3f5dcc5a7	2025	100	2025-01-06 01:03:30.86929+00
253f37de-7f04-4656-8ee0-b47d39a17dcd	23ed17cc-4045-4dc8-946a-08124e3cfe25	2025	4445	2025-01-06 01:19:12.095956+00
1a57d3fa-0523-4a8e-914b-f6bf0751f874	23ed17cc-4045-4dc8-946a-08124e3cfe25	2026	55551	2025-01-08 19:28:39.079238+00
ec74f941-0132-4e08-b390-73ddae7cedd5	7b962bb3-53a0-42d5-8085-3b9513c9e5f4	2026	444444	2025-01-08 19:29:11.321352+00
\.


--
-- Data for Name: other_article_revenues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."other_article_revenues" ("id", "article_id", "year", "month", "amount", "receipt_number", "payment_date", "created_at") FROM stdin;
f5872764-7b2e-4ef0-abc0-17f211c0edcb	8ad9c381-ae3b-4c7d-b737-5e633ef6ca24	2025	1	458544	4444	2025-01-05	2025-01-05 20:26:53.918259+00
f5cfbcf6-c1b1-477e-85f9-00aac10f4f3f	8ad9c381-ae3b-4c7d-b737-5e633ef6ca24	2025	1	15245	\N	2025-01-06	2025-01-06 00:42:26.14047+00
c71c4086-cff6-484a-a93b-5420d03f9028	8ad9c381-ae3b-4c7d-b737-5e633ef6ca24	2025	1	5487	\N	2025-01-06	2025-01-06 00:50:28.114153+00
3c3a63c0-7d47-48cb-a9fd-a97bf039bbb6	7b962bb3-53a0-42d5-8085-3b9513c9e5f4	2025	1	5485	\N	2025-01-06	2025-01-06 00:50:41.314634+00
dc7f632d-689d-4b67-a41f-7518f2853196	8ad9c381-ae3b-4c7d-b737-5e633ef6ca24	2025	2	554	\N	2025-01-06	2025-01-06 00:57:39.831791+00
df2ce8d3-f0b4-4311-b81b-a3d096901df2	4aad03b1-4e9d-44f4-90ae-faf3f5dcc5a7	2025	1	10	\N	2025-01-06	2025-01-06 01:03:48.79751+00
ed1c8e7e-6326-489e-b0c4-23fe5788cfc9	23ed17cc-4045-4dc8-946a-08124e3cfe25	2025	1	4587	\N	2025-01-06	2025-01-06 01:18:58.687145+00
b4679e7e-d686-411f-a868-8c39499a15a9	23ed17cc-4045-4dc8-946a-08124e3cfe25	2025	2	8784	\N	2025-01-06	2025-01-06 01:27:41.075041+00
9714bb69-4daf-40b9-9bdb-08cd1559452b	23ed17cc-4045-4dc8-946a-08124e3cfe25	2025	3	55	\N	2025-01-06	2025-01-06 18:41:16.394191+00
a02746c3-6719-4bf8-83d4-9b69600c5d58	23ed17cc-4045-4dc8-946a-08124e3cfe25	2025	5	5487	\N	2025-01-08	2025-01-08 19:01:44.18404+00
\.


--
-- Data for Name: parking_vehicle_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."parking_vehicle_types" ("id", "name", "created_at") FROM stdin;
000937b2-138c-419a-ac18-d758d56b312b	Grand Taxi Catégorie A	2024-11-30 18:20:06+00
5e2c9f19-06a7-4696-8efc-3268742ddbb1	Car	2024-12-18 22:24:49.654678+00
\.


--
-- Data for Name: parking_permits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."parking_permits" ("id", "permit_number", "vehicle_type_id", "owner_name", "owner_id_number", "license_plate", "address", "phone", "status", "created_at", "evaluation_amount") FROM stdin;
81f77f23-773a-4c9e-bd9c-bcb86c524d31	1	000937b2-138c-419a-ac18-d758d56b312b	youssef	JB123456	33-A-5548	Agadir	0642707879	active	2024-11-30 18:21:44+00	0
646272c3-7724-4a86-b17e-a667c8af3470	2	000937b2-138c-419a-ac18-d758d56b312b	jhgjg	jhgjhg	jhgjhg	jhgjhg	jhgjhg	active	2024-01-02 00:47:56+00	0
c22bcd1b-1b94-46a5-8418-42a904b44147	5	000937b2-138c-419a-ac18-d758d56b312b	youssef	JB123456	33-a-5558	agadir	0648270787	active	2023-06-01 14:48:55+00	0
6fdcbd70-d00d-4a3d-b33c-5d9d5cdc5be5	41	5e2c9f19-06a7-4696-8efc-3268742ddbb1	ahmed ss	jh54875787	33-a-54874	test test		active	2024-12-31 00:40:06.303863+00	0
\.


--
-- Data for Name: parking_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."parking_payments" ("id", "permit_id", "year", "quarter", "transport_tax", "parking_fee", "total_amount", "receipt_number", "payment_date", "created_at") FROM stdin;
c07be74d-d137-40b7-ae58-5a5f7d89067c	646272c3-7724-4a86-b17e-a667c8af3470	2024	1	119.5	143.4	262.9	54874	2024-12-02	2024-12-02 00:54:12.65737+00
d16d9477-ad55-4ac5-8cd0-2c2f27925959	646272c3-7724-4a86-b17e-a667c8af3470	2024	2	118	141.6	259.6	5487	2024-12-02	2024-12-02 00:54:38.471968+00
ef57bf20-efa9-4e06-9b9d-7f21de829561	646272c3-7724-4a86-b17e-a667c8af3470	2024	3	116.5	139.8	256.3	5487	2024-12-02	2024-12-02 00:54:38.658396+00
c9789641-0beb-4c5e-8cdc-318c4aa16dd5	c22bcd1b-1b94-46a5-8418-42a904b44147	2023	2	124	148.8	272.8	11212121	2024-12-03	2024-12-02 23:40:16.835025+00
1fedd224-8738-453e-8713-05c6d06bd68e	c22bcd1b-1b94-46a5-8418-42a904b44147	2023	3	122.50000000000001	147	269.5	11212121	2024-12-03	2024-12-02 23:40:17.067069+00
0e4c7eb6-7de1-4a1e-b756-7074ac15ea72	c22bcd1b-1b94-46a5-8418-42a904b44147	2023	4	121	145.2	266.2	11212121	2024-12-03	2024-12-02 23:40:17.34658+00
2ad82d84-8f9c-45cb-97f9-3e373cd27619	646272c3-7724-4a86-b17e-a667c8af3470	2024	4	114.99999999999999	138	253	4444444	2024-12-14	2024-12-14 17:17:14.066668+00
db22dd2a-73b3-44e3-b1ac-571f2dfd8be4	c22bcd1b-1b94-46a5-8418-42a904b44147	2024	1	119.5	143.4	262.9	87845484	2024-12-20	2024-12-20 18:51:20.017973+00
9a975e24-6c99-4b00-b075-c1c461c0e513	c22bcd1b-1b94-46a5-8418-42a904b44147	2024	2	118	141.6	259.6	878787	2024-12-03	2024-12-20 19:16:11.963276+00
1a1a4faf-07c1-4233-87d3-324f47157971	c22bcd1b-1b94-46a5-8418-42a904b44147	2024	3	116.5	139.8	256.3	44545	2024-12-28	2024-12-28 22:05:55.178855+00
d721c9cc-5ccb-49d9-98ed-765547fae2e3	c22bcd1b-1b94-46a5-8418-42a904b44147	2024	4	114.99999999999999	138	253	44545	2024-12-28	2024-12-28 22:05:55.391007+00
5b7167e8-f84f-437b-ad88-5151c3a444ea	81f77f23-773a-4c9e-bd9c-bcb86c524d31	2024	4	114.99999999999999	138	253	454545	2024-12-21	2024-12-28 22:06:11.641896+00
04dae4f5-b71a-4b9c-b56b-707550ff68cb	6fdcbd70-d00d-4a3d-b33c-5d9d5cdc5be5	2024	4	462	1732.5	2194.5	54844	2024-12-31	2024-12-31 00:40:37.256808+00
bdc1bafc-24ad-48a1-afb3-42ef2311ae3d	81f77f23-773a-4c9e-bd9c-bcb86c524d31	2025	1	100	120	220	vxvcx	2025-01-05	2025-01-05 01:53:06.876986+00
\.


--
-- Data for Name: parking_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."parking_settings" ("id", "vehicle_type_id", "transport_tax_rate", "parking_fee_rate", "valid_from", "valid_to", "created_at") FROM stdin;
aaae032e-178e-49bf-8fcc-e006ca05cb96	000937b2-138c-419a-ac18-d758d56b312b	100	120	2020-01-30	\N	2024-11-30 18:20:52+00
1d428dd8-6820-414e-9bab-c90f9a3e83b6	5e2c9f19-06a7-4696-8efc-3268742ddbb1	400	1500	2024-12-18	\N	2024-12-18 22:24:50.098806+00
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."profiles" ("id", "first_name", "last_name", "created_at", "permissions") FROM stdin;
ec17b144-82e3-4f6b-956d-d9a0ddc84b75	Hassen	el mouden	2024-12-17 13:36:51.030111+00	\N
fd1e41c6-4ca9-46dc-b79a-7be0d50c5305	youssef	ouhchouch	2024-12-15 19:21:08.021893+00	{manage_impound,manage_shops,manage_beverages,manage_lands,manage_parking,manage_occupation,manage_users,manage_other_articles,manage_impound_payments,manage_shop_payments,manage_beverage_payments,manage_land_payments,manage_parking_payments,manage_occupation_payments,manage_taxpayers}
f1964cd5-b53a-4626-820b-673e558931cd	youssef	ou	2024-12-15 19:28:04.697694+00	{manage_impound,manage_shops,manage_beverages,manage_lands,manage_parking,manage_occupation,manage_users,manage_other_articles,manage_impound_payments,manage_shop_payments,manage_land_payments,manage_beverage_payments,manage_parking_payments,manage_occupation_payments,manage_taxpayers}
dabb2a2b-fcee-4c26-a8f1-3701325425e7	\N	\N	2025-01-06 17:14:07.40783+00	{manage_impound,manage_shops,manage_beverages,manage_lands,manage_parking,manage_occupation,manage_users,manage_other_articles,manage_impound_payments,manage_shop_payments,manage_beverage_payments,manage_land_payments,manage_parking_payments,manage_occupation_payments,manage_taxpayers}
403b70e3-ff6f-472a-9f74-5a6155b8f241	\N	\N	2025-01-31 14:23:33.32281+00	{}
7cc5166c-5406-4c68-aa14-fbbccf9fe96a	\N	\N	2025-02-19 11:16:53.100216+00	{}
\.


--
-- Data for Name: sectors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sectors" ("id", "name", "created_at") FROM stdin;
c6d4b89f-c63e-489a-b6ee-d227c76f29bd	E	2024-11-30 16:52:32.045154+00
672dc5d6-6051-43e0-bde5-f2343134c3bf	F	2024-11-30 16:52:32.045154+00
803e6cb3-866c-4a78-abc4-8a488980ccb7	G	2024-11-30 16:52:32.045154+00
8994f244-2b8a-4886-97c6-b74f9796cd83	H	2024-11-30 16:52:32.045154+00
f8f8aa32-e9c8-4ce1-8359-8ddc8642fb78	K	2024-11-30 16:52:32.045154+00
7c9cc6d6-82c5-4d37-ae17-0e839bc0460a	L	2024-11-30 16:52:32.045154+00
40051cac-46c7-43c1-a6aa-f5ffbedab6f5	M	2024-11-30 16:52:32.045154+00
a35016c9-009a-44ee-b8a0-d12e4c7b2954	N	2024-11-30 16:52:32.045154+00
1b7fd6ad-ba1f-4394-88f8-b7ec4cb797c9	O	2024-11-30 16:52:32.045154+00
79cf52b1-0a49-4b0b-a5d4-f4b3ba9fbb14	P	2024-11-30 16:52:32.045154+00
0c336c6d-375e-4c3d-a621-17662b451709	S	2024-11-30 16:52:32.045154+00
f09ab034-8494-4d5f-a777-a89316f160c4	R	2024-12-15 16:15:31.011888+00
\.


--
-- Data for Name: shops; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shops" ("id", "sector_id", "shop_number", "surface", "status", "owner_name", "owner_id_number", "address", "phone", "occupation_date", "created_at", "rate", "evaluation_amount", "last_payment_date", "monthly_rate") FROM stdin;
6f3b3ddc-8671-4d37-9b99-43884fe2b6be	672dc5d6-6051-43e0-bde5-f2343134c3bf	2	20	constructed	ahmed	123456	agadir	\N	2022-01-01	2025-02-01 17:59:21.129206+00	165.0	0	2022-01-01	165.0
cd28946c-d553-4042-9d58-f50752421d06	c6d4b89f-c63e-489a-b6ee-d227c76f29bd	1	21	constructed	youssef	jb123456	agadir	0642424242	2020-01-01	2024-02-01 15:26:50.820347+00	127.05	0	2020-10-01	127.05
\.


--
-- Data for Name: shop_payment_pauses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shop_payment_pauses" ("id", "shop_id", "start_date", "end_date", "reason", "created_at", "created_by") FROM stdin;
\.


--
-- Data for Name: shop_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shop_payments" ("id", "shop_id", "start_period", "end_period", "amount", "receipt_number", "payment_date", "created_at") FROM stdin;
79be4b71-5111-46d0-80f3-569c91065777	cd28946c-d553-4042-9d58-f50752421d06	2020-02-01	2020-02-01	127.05	54845	2025-02-02	2025-02-02 16:10:27.552551+00
9df1a0f1-888e-4b88-8f66-0130d7518b30	cd28946c-d553-4042-9d58-f50752421d06	2020-03-01	2020-04-01	254.1	ggggg	2025-02-02	2025-02-02 16:36:33.347755+00
85f3bad6-ee7e-4e1a-9bc6-04169900c88b	cd28946c-d553-4042-9d58-f50752421d06	2020-05-01	2020-05-01	127.05	2121	2025-02-02	2025-02-02 17:17:00.233606+00
083023b3-1e56-48af-b014-c99370f1d0a3	cd28946c-d553-4042-9d58-f50752421d06	2020-06-01	2020-06-01	127.05	5454	2025-02-02	2025-02-02 17:27:17.710315+00
864a4250-e357-4262-9656-c7f8b226b7b4	cd28946c-d553-4042-9d58-f50752421d06	2020-07-01	2020-07-01	127.05	54545	2025-02-02	2025-02-02 17:37:25.710818+00
e62218f1-c3bc-4197-b981-84c54c5a8cd5	cd28946c-d553-4042-9d58-f50752421d06	2020-08-01	2020-08-01	127.05	554	2025-02-02	2025-02-02 17:44:42.790511+00
dcae574c-7150-4386-b492-6e2769dc9269	cd28946c-d553-4042-9d58-f50752421d06	2020-09-01	2020-10-01	254.1	44564	2025-02-03	2025-02-03 14:33:04.743185+00
\.


--
-- Data for Name: shop_rate_increases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shop_rate_increases" ("id", "increase_date", "increase_percentage", "created_at", "created_by") FROM stdin;
6d413f17-66f0-41d5-bc9e-e304cfde33f2	2024-01-01	10.0	2025-02-01 18:41:59.828422+00	f1964cd5-b53a-4626-820b-673e558931cd
bb8c1385-62b7-449c-82d2-2d07ba7ab4ad	2024-01-01	10.0	2025-02-01 19:00:21.032545+00	fd1e41c6-4ca9-46dc-b79a-7be0d50c5305
\.


--
-- Data for Name: souk_rentals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."souk_rentals" ("id", "tenant_name", "id_number", "address", "phone", "rental_amount", "start_date", "end_date", "created_at", "status") FROM stdin;
3535cfd1-f47f-46e1-b6a1-d6d4da5ef270	1	jb123456	agaidr	06484521	125154	2023-01-04	\N	2024-12-04 14:15:54.678653+00	active
c2790b07-408f-4749-85a9-9d2a6f115728	roudani 	rc15418	agadir	06487178	1542124	2024-07-02	\N	2025-01-03 20:03:09.931084+00	active
\.


--
-- Data for Name: souk_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."souk_payments" ("id", "rental_id", "start_period", "end_period", "amount", "receipt_number", "payment_date", "created_at") FROM stdin;
093a6738-ddf4-4ba3-87a6-73ef3135ec85	c2790b07-408f-4749-85a9-9d2a6f115728	2024-07-01	2024-07-31	1542124	45584	2025-02-19	2025-02-19 12:05:17.655759+00
e62580dd-5293-45a6-bc8a-ac4439a36019	c2790b07-408f-4749-85a9-9d2a6f115728	2024-08-01	2024-08-31	1542124	45584	2025-02-19	2025-02-19 12:05:17.850221+00
\.


--
-- Data for Name: taxpayers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."taxpayers" ("id", "name", "id_number", "address", "articles", "total_unpaid", "created_at") FROM stdin;
\.


--
-- Data for Name: user_table_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_table_preferences" ("id", "user_id", "table_name", "columns", "created_at") FROM stdin;
01fa7195-aa63-4bc6-a90c-d2270b2005ac	\N	occupancy_permits	["permit_number"]	2024-12-14 19:07:25.820248+00
68901260-43d7-4ec7-bc07-d0e9639e11e7	\N	occupancy_permits	["building_permit_number"]	2024-12-14 19:07:26.818111+00
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
auction_receipts	auction_receipts	\N	2024-12-25 17:06:00.113053+00	2024-12-25 17:06:00.113053+00	t	f	\N	\N	\N
notices	notices	\N	2025-01-04 03:41:23.827768+00	2025-01-04 03:41:23.827768+00	t	f	\N	\N	\N
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
4f9c0c91-a82d-4a9a-999b-cab173c274b5	auction_receipts	bcec0452-5e9b-48af-993c-ce2cfc9a41a6.pdf	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	2024-12-25 17:15:41.347147+00	2024-12-25 17:15:41.347147+00	2024-12-25 17:15:41.347147+00	{"eTag": "\\"47de84a10604cb9ad8fecc5aa3b4e06a\\"", "size": 8345, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2024-12-25T17:15:42.000Z", "contentLength": 8345, "httpStatusCode": 200}	c1f68c2b-14f0-4a5e-9965-c7dcfdb4b061	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	{}
3cd55bfd-5cb2-4fd7-92e6-b1eea20df9ed	auction_receipts	483d5ce2-071d-4076-bc1e-adb91f0781e4.pdf	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	2024-12-25 17:15:52.232459+00	2024-12-25 17:15:52.232459+00	2024-12-25 17:15:52.232459+00	{"eTag": "\\"47de84a10604cb9ad8fecc5aa3b4e06a\\"", "size": 8345, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2024-12-25T17:15:53.000Z", "contentLength": 8345, "httpStatusCode": 200}	b8b5a73e-7221-4453-be2e-4abb525d9ad7	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	{}
872788cf-b6eb-4b3a-bff9-97855e3ef9dc	auction_receipts	6a6ce737-306c-41c0-a2b5-43d65acf90d9.pdf	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	2024-12-25 18:46:50.459271+00	2024-12-25 18:46:50.459271+00	2024-12-25 18:46:50.459271+00	{"eTag": "\\"d744cbb7ccdc547dc75c98262e343c10\\"", "size": 25044, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2024-12-25T18:46:51.000Z", "contentLength": 25044, "httpStatusCode": 200}	6530d5f6-81a3-422d-a029-4ae56f1e92d0	ec17b144-82e3-4f6b-956d-d9a0ddc84b75	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 605, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: declaration_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."declaration_number_seq"', 1, false);


--
-- Name: lands_file_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."lands_file_number_seq"', 47, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
