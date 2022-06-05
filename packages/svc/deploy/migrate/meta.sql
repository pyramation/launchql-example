-- Deploy: migrate/meta to pg
-- made with <3 @ launchql.com



BEGIN;
SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to collections_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN
  
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;



INSERT INTO collections_public.database ( id, owner_id, name, hash ) VALUES ('e1e20463-0cde-5a8d-90ad-6890cd9359a9', NULL, 'vybez', '0db18801-3d65-5892-8efc-0e440cf18b33');

INSERT INTO collections_public.schema ( id, database_id, name, schema_name, description ) VALUES ('7ec78a09-9e22-41b8-437e-cc645ceb5021', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'public', 'vybez_public', NULL), ('7ec70f40-77e6-4099-fcfb-33aca60a7560', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'private', 'vybez_private', NULL), ('7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'memberships_public', 'vybez_memberships_public', NULL), ('7ec7f242-c03a-41dd-0a3b-aad357289b61', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'permissions_public', 'vybez_permissions_public', NULL), ('7ec77429-ecde-4ef1-ad9b-69eca5426227', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'permissions_private', 'vybez_permissions_private', NULL), ('7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'limits_public', 'vybez_limits_public', NULL), ('7ec732f2-5454-400b-6b64-43232abc5a1c', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'limits_private', 'vybez_limits_private', NULL), ('7ec7d844-a499-4bf5-f50d-b5e09224b693', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'memberships_private', 'vybez_memberships_private', NULL), ('7ec7e1d9-a785-4017-e380-b7fbfe6b672c', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'status_public', 'vybez_status_public', NULL), ('7ec74105-0b90-41ea-aa18-54fb0f12f2b3', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'status_private', 'vybez_status_private', NULL), ('7ec7ef1f-7d75-4828-b563-9ece5ae1a7ab', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'simple_secrets', 'vybez_simple_secrets', NULL), ('7ec74c6c-1180-4ae7-5c27-ede3e97a5d82', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'roles_private', 'vybez_roles_private', NULL), ('7ec7abd8-9387-42cd-c4f6-0d29456d9332', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'encrypted', 'vybez_encrypted', NULL), ('7ec78157-9f1f-4b4e-2ae1-f84a7437dd92', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'roles_public', 'vybez_roles_public', NULL), ('7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'invites_public', 'vybez_invites_public', NULL), ('7ec7aca4-c85a-4948-672d-937eb44abe4e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'invites_private', 'vybez_invites_private', NULL);

INSERT INTO collections_public."table" ( id, database_id, schema_id, name, description ) VALUES ('7ec76e82-b966-4500-a31b-031c12e0766d', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'role_types', NULL), ('7ec7d137-2be2-4686-d196-ff375cc888da', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'users', NULL), ('7ec790e2-5e86-43be-f340-4017d6dfe014', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'membership_types', NULL), ('7ec7ec1a-c69b-48f3-6fce-1126646703d7', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7d844-a499-4bf5-f50d-b5e09224b693', 'app_memberships_acl', NULL), ('7ec76206-fe35-4e24-ff40-a68a34db8140', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7d844-a499-4bf5-f50d-b5e09224b693', 'memberships_acl', NULL), ('7ec7a9d8-a208-4086-51ac-64e9f9e1890f', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7d844-a499-4bf5-f50d-b5e09224b693', 'group_memberships_acl', NULL), ('7ec782ee-9f95-4cb4-f9b8-5cfeca24dc55', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ef1f-7d75-4828-b563-9ece5ae1a7ab', 'user_secrets', NULL), ('7ec74300-c714-414d-787d-967c0979c197', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec74c6c-1180-4ae7-5c27-ede3e97a5d82', 'api_tokens', NULL), ('7ec7edde-689d-4db3-9836-3ba050d7baaa', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7abd8-9387-42cd-c4f6-0d29456d9332', 'user_encrypted_secrets', NULL), ('7ec72df7-8072-4e9e-f57d-b3f350270a46', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'connected_accounts', NULL), ('7ec75611-9a09-4690-d285-f72dbd3ee12e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'emails', NULL), ('7ec70f61-cd3a-4506-7946-92e0615a690f', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'phone_numbers', NULL), ('7ec74d04-8fb3-42b7-60b6-22660cac1e0d', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'crypto_addresses', NULL), ('7ec7cec1-2fac-4f3e-0c6d-8233906647e5', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'invites', NULL), ('7ec78a0a-718f-4f63-06b6-4f45febb28bc', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'claimed_invites', NULL), ('7ec76ab0-0ca7-4126-cbab-d9479202648c', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'member_invites', NULL), ('7ec79077-5249-4855-f046-5a4aebf2c17e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'member_claimed_invites', NULL), ('7ec741b5-b065-4e17-e4a7-06cb7374be94', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'group_invites', NULL), ('7ec7122f-8ebf-40d5-2933-b9387da7daec', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'group_claimed_invites', NULL), ('7ec75f74-0054-44dc-d975-d9202e68890a', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', 'app_permissions', NULL), ('7ec74ab5-ee9a-4acc-fa78-cd122c983b3e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', 'app_permission_defaults', NULL), ('7ec75cfd-c6c9-47e0-83f3-710e6d162ea4', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'app_limits', NULL), ('7ec70e1a-c11c-42ed-7636-9b61084f86e2', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'app_limit_defaults', NULL), ('7ec74d44-3b15-48f7-fcbb-75568ed03118', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'app_memberships', NULL), ('7ec7731e-9f54-497d-45b1-fc070f3970f3', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'app_membership_defaults', NULL), ('7ec7df1f-c29f-47e2-1b89-8cd613d905e7', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'app_grants', NULL), ('7ec77495-78f1-4d45-a6b9-9fee0fa5bfec', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'app_admin_grants', NULL), ('7ec73ab5-0970-4f6e-6f07-bef25ce17bf7', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'app_owner_grants', NULL), ('7ec7c26e-c628-4d64-adda-4bd39656cee2', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7e1d9-a785-4017-e380-b7fbfe6b672c', 'app_steps', 'The user achieving a requirement for a level. Log table that has every single step ever taken.'), ('7ec7c7c9-2dad-473e-f745-015e0b76a785', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7e1d9-a785-4017-e380-b7fbfe6b672c', 'app_achievements', 'This table represents the users progress for particular level requirements, tallying the total count. This table is updated via triggers and should not be updated maually.'), ('7ec74aae-aeb3-4681-718a-4c098cd31f58', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7e1d9-a785-4017-e380-b7fbfe6b672c', 'app_levels', 'Levels for achievement'), ('7ec7eb76-ae76-4ef5-eba7-d6594ce72813', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7e1d9-a785-4017-e380-b7fbfe6b672c', 'app_level_requirements', 'Requirements to achieve a level'), ('7ec7df05-1e4d-4e4d-8d01-8b0d9b98b0c7', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', 'membership_permissions', NULL), ('7ec7f636-6998-40c0-7ea7-b008e5d6768d', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', 'membership_permission_defaults', NULL), ('7ec78c8a-7ffa-4e3e-2c56-a3a661364d1d', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'membership_limits', NULL), ('7ec76172-4728-440a-edca-23557246ef46', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'membership_limit_defaults', NULL), ('7ec764e0-9442-493e-97a1-c1bd583d924c', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'members', NULL), ('7ec7f2c3-d50e-4835-87fd-d380d82947f7', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'memberships', NULL), ('7ec76cc3-36d0-46c3-2595-d8167fefa431', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'membership_defaults', NULL), ('7ec7a37f-9e43-4156-ad1d-d2bd3c908e2f', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'grants', NULL), ('7ec746c3-0a84-4fc1-721c-29d00b524ae0', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'admin_grants', NULL), ('7ec72d70-fdd8-4eb1-1c03-d760437c898a', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'owner_grants', NULL), ('7ec769e9-7a53-4113-a45a-ecf2a1e9176b', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'groups', NULL), ('7ec7027d-6921-42ae-634c-b316f78cdf02', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', 'group_member_permissions', NULL), ('7ec7d0cf-81d1-411e-c46e-835373ef9320', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', 'group_member_permission_defaults', NULL), ('7ec733a1-d88a-4fe5-813d-ccec43f78c7d', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'group_member_limits', NULL), ('7ec776bb-1f06-41ea-c87f-171d79163255', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'group_member_limit_defaults', NULL), ('7ec7a5bb-1084-48e8-13fc-bf7e7e1cd2b5', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'group_members', NULL), ('7ec71d03-bdd6-497b-cf13-2443967b2c13', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'group_memberships', NULL), ('7ec7b1ba-cee2-4dd0-b174-f260da42022e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'group_membership_defaults', NULL), ('7ec74bb0-e2d3-4e1c-0609-daf487170089', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'group_grants', NULL), ('7ec75a7c-dbf4-459c-2b2a-d07dfb8b2d2e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'group_admin_grants', NULL), ('7ec7fd11-ac1d-46c1-8ade-e7dde4055fc6', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'group_owner_grants', NULL), ('7ec7243b-182e-4fcd-53bb-d3992544f3e3', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78157-9f1f-4b4e-2ae1-f84a7437dd92', 'audit_logs', NULL), ('7ec7fb0f-fdf0-4387-d6e5-13f30b9d9679', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78157-9f1f-4b4e-2ae1-f84a7437dd92', 'auth_accounts', NULL), ('7ec7873a-0ff2-4990-0401-2b0557b1ebb5', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'user_profiles', NULL), ('7ec7f96c-cca0-40d0-7a96-9456ba79a704', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'user_settings', NULL), ('7ec7f821-9cf5-47f9-58ff-cbafdf15947f', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'organization_profiles', NULL), ('7ec7e0f4-2696-4292-17ed-6f33cb5c88c9', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'publications', NULL), ('7ec770b7-b729-41f7-6971-3189a676c8bf', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'interaction_types', NULL), ('7ec7a0ee-9f78-4a9d-4cdb-8999b30b5ccb', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'interactions', NULL);

INSERT INTO meta_public.domains ( id, database_id, site_id, api_id, domain, subdomain ) VALUES ('e33f62ad-ca74-4074-a67a-ceea23606e1b', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', NULL, '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0', 'vybez.com', 'api'), ('7dd52bdc-6d73-4c42-8ded-96cb04529f8a', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', NULL, 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500', 'vybez.com', 'admin'), ('6ff9cc7b-471f-4628-83e7-b12885cededb', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', NULL, '0b3c3b84-640c-49e1-a939-e2ed02f45a9e', 'vybez.com', 'meta'), ('2ac32d1c-0908-43a7-8e04-4bda6369daae', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '240723cb-e489-4d6a-b565-67eb873ecd57', NULL, 'vybez.com', 'app');

INSERT INTO meta_public.apis ( id, database_id, name, dbname, is_public, role_name, anon_role ) VALUES ('826714dd-bc9d-41f5-82aa-f58e1a4fc1f0', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'public', 'testing-db-1654397234760', TRUE, 'authenticated', 'anonymous'), ('6392af98-dda9-4a38-8238-3de81600c584', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'private', 'testing-db-1654397234760', FALSE, 'administrator', 'administrator'), ('da2b2d17-fb3a-4364-bc21-ed6b1c0c9500', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'admin', 'testing-db-1654397234760', TRUE, 'administrator', 'administrator'), ('0b3c3b84-640c-49e1-a939-e2ed02f45a9e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'meta', 'testing-db-1654397234760', FALSE, 'administrator', 'administrator'), ('bd74c4c9-36c7-42cc-9eff-92bf4fe537b9', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'jobs', 'testing-db-1654397234760', FALSE, 'administrator', 'administrator');

INSERT INTO meta_public.sites ( id, database_id, title, description, og_image, favicon, apple_touch_icon, logo, dbname ) VALUES ('240723cb-e489-4d6a-b565-67eb873ecd57', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'vybez', 'Download our app today', '{"url":"https://dl.airtable.com/.attachments/47f723ee5ea33d20e03eb7a82fdd74ea/64497b4d/dbe.png","mime":"image/png"}', 'https://dl.airtable.com/.attachments/9d08e1a8ccfb4e250980e91776707f7e/8057a765/favicon.ico', '{"url":"https://dl.airtable.com/.attachments/1d46c02b389e9902b7b70f50a4bec2e8/602c5ec6/logo-192x192.png","mime":"image/png"}', '{"url":"https://dl.airtable.com/.attachments/47f723ee5ea33d20e03eb7a82fdd74ea/64497b4d/dbe.png","mime":"image/png"}', 'testing-db-1654397234760');

INSERT INTO meta_public.api_modules ( id, database_id, api_id, name, data ) VALUES ('01e76857-01b3-4b28-85d1-30380083f478', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0', 'rls_module', '{"role_schema":"vybez_roles_public","authenticate":"authenticate","current_role":"get_current_user","current_role_id":"get_current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"vybez_roles_private","authenticate_strict":"authenticate_strict"}');

INSERT INTO meta_public.site_modules ( id, database_id, site_id, name, data ) VALUES ('3edd0d55-7a41-4c16-aec6-0795aebaf245', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '240723cb-e489-4d6a-b565-67eb873ecd57', 'legal_terms_module', '{"site":{"www":"app.vybez.com","host":"app.vybez.com","siteUrl":"https://app.vybez.com"},"emails":{"abuse":"info@vybez.com","hello":"info@vybez.com","legal":"info@vybez.com","privacy":"info@vybez.com","support":"info@vybez.com","copyright":"info@vybez.com","arbitrationOptOut":"info@vybez.com"},"company":{"addr":["555 Marina Street","Los Angeles, CA 90291"],"name":"Vybez, Inc.","nick":"Vybez","website":"http://vybez.com/","legalState":"California","legalCounty":"Los Angeles"}}'), ('6df90a58-cc17-4d1b-96ed-5fc819a09f31', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '240723cb-e489-4d6a-b565-67eb873ecd57', 'user_auth_module', '{"sign_in":"login","sign_up":"register","sign_out":"logout","auth_schema":"vybez_roles_public","set_password":"set_password","verify_email":"verify_email","check_password":"check_password","reset_password":"reset_password","forgot_password":"forgot_password","verify_password":"verify_password","send_verification_email":"send_verification_email"}');

INSERT INTO meta_public.site_themes ( id, database_id, site_id, theme ) VALUES ('b5f070ac-a637-4c52-98a3-897d6b70e43e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '240723cb-e489-4d6a-b565-67eb873ecd57', '{"colors":["#9DB4B2","#d3e3e3","#766543","#263130"],"primary":"#466968","background":"#f0f4f4"}');

INSERT INTO meta_public.apps ( id, database_id, site_id, name, app_image, app_store_link, app_store_id, app_id_prefix, play_store_link ) VALUES ('da39de8c-4689-4d6e-a3ca-1efb6ba38523', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '240723cb-e489-4d6a-b565-67eb873ecd57', 'Vybez', '{"url":"https://dl.airtable.com/.attachments/b5633bad81def88c8d1d93146b1d8da8/f5795056/earth.png","mime":"image/png"}', 'https://itunes.apple.com/us/app/dashboard-earth/id1444355623', '1444355623', NULL, NULL);

INSERT INTO meta_public.api_extensions ( id, database_id, api_id, schema_name ) VALUES ('fe4d5a33-5c60-4b62-a713-800fb2d0ec5c', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '0b3c3b84-640c-49e1-a939-e2ed02f45a9e', 'meta_public'), ('c289bc0f-c59d-4fb2-8f0e-b4a7e886a5c1', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '0b3c3b84-640c-49e1-a939-e2ed02f45a9e', 'collections_public'), ('d08e2f14-84a7-4dd0-9c4b-b90dd2b4d8df', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', 'bd74c4c9-36c7-42cc-9eff-92bf4fe537b9', 'app_jobs');

INSERT INTO meta_public.api_schemata ( id, database_id, schema_id, api_id ) VALUES ('6b168052-b0b8-4e72-b5d4-b55af31229ed', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0'), ('87ada421-3c87-4ca5-89f7-4963594bfc75', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', '6392af98-dda9-4a38-8238-3de81600c584'), ('ed2276a2-f054-4996-b5f7-78a4bfdcf6c0', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec70f40-77e6-4099-fcfb-33aca60a7560', '6392af98-dda9-4a38-8238-3de81600c584'), ('4c192ce9-6a59-4930-9a8d-a72f60f23e7e', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78a09-9e22-41b8-437e-cc645ceb5021', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500'), ('99da58c6-09b5-4501-94bb-f4c06337c849', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec70f40-77e6-4099-fcfb-33aca60a7560', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500'), ('882921b9-47fc-4b72-a9c2-b034a4845be1', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0'), ('5793b7cf-a0b9-4136-8e2b-f453bd21d6bc', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', '6392af98-dda9-4a38-8238-3de81600c584'), ('2203c98e-9ad8-49e6-8e88-9e6d493d18af', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7f242-c03a-41dd-0a3b-aad357289b61', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500'), ('a3c6132a-5e56-4ed6-a2cb-92622ab4eb2a', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0'), ('72b46377-c3ff-4576-bbe6-05e1a978cf54', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', '6392af98-dda9-4a38-8238-3de81600c584'), ('e429c43c-7c31-4984-be8e-c70c0dee5e10', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7a487-63c6-4f1a-f21a-be33bc4f29fc', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500'), ('bc2c0015-4c10-4733-9ec3-09bc427e6d4b', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0'), ('393ac60b-b088-4d83-a86b-0c9ebd5ab49f', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', '6392af98-dda9-4a38-8238-3de81600c584'), ('a242094a-73f3-4fd0-8ede-ef5ebd3d6dd2', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec732f1-a700-478b-0f63-7bbfc9dd020f', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500'), ('c9b40314-0d24-4577-8d48-6ff505b1e445', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7e1d9-a785-4017-e380-b7fbfe6b672c', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0'), ('c7ae7b33-4a76-4c5c-b3b0-7ce4b8be29c1', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7e1d9-a785-4017-e380-b7fbfe6b672c', '6392af98-dda9-4a38-8238-3de81600c584'), ('896109ed-0305-4a2c-baff-3e73e8eb9334', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7e1d9-a785-4017-e380-b7fbfe6b672c', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500'), ('2a44057b-bb39-4e83-924d-fb636cb5e58a', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78157-9f1f-4b4e-2ae1-f84a7437dd92', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0'), ('e787d6f5-044b-4dfd-9521-61873aa04cd1', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78157-9f1f-4b4e-2ae1-f84a7437dd92', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500'), ('6624b51d-fd91-47e3-9f37-5d8bd4d80dc9', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0'), ('9262c606-3bfc-474d-9d50-8b441ddbb0b9', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', '6392af98-dda9-4a38-8238-3de81600c584'), ('1f7bfdfa-6124-49ae-99cd-79c3ca1a9a88', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec7ca5a-0536-4b1b-6ad2-34ef02393c57', 'da2b2d17-fb3a-4364-bc21-ed6b1c0c9500');

INSERT INTO meta_public.rls_module ( id, database_id, api_id, schema_id, private_schema_id, tokens_table_id, users_table_id, authenticate, authenticate_strict, "current_role", current_role_id ) VALUES ('56707efd-da6a-4b28-81ab-c3030cfb46fc', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '826714dd-bc9d-41f5-82aa-f58e1a4fc1f0', '7ec78157-9f1f-4b4e-2ae1-f84a7437dd92', '7ec74c6c-1180-4ae7-5c27-ede3e97a5d82', '7ec74300-c714-414d-787d-967c0979c197', '7ec7d137-2be2-4686-d196-ff375cc888da', 'authenticate', 'authenticate_strict', 'get_current_user', 'get_current_user_id');

INSERT INTO meta_public.user_auth_module ( id, database_id, schema_id, emails_table_id, users_table_id, secrets_table_id, encrypted_table_id, tokens_table_id, sign_in_function, sign_up_function, sign_out_function, sign_in_one_time_token_function, one_time_token_function, extend_token_expires, send_account_deletion_email_function, delete_account_function, set_password_function, reset_password_function, forgot_password_function, send_verification_email_function, verify_email_function ) VALUES ('e7015118-4e3a-493f-9fbd-3f3e903a46b7', 'e1e20463-0cde-5a8d-90ad-6890cd9359a9', '7ec78157-9f1f-4b4e-2ae1-f84a7437dd92', '7ec75611-9a09-4690-d285-f72dbd3ee12e', '7ec7d137-2be2-4686-d196-ff375cc888da', '7ec782ee-9f95-4cb4-f9b8-5cfeca24dc55', '7ec7edde-689d-4db3-9836-3ba050d7baaa', '7ec74300-c714-414d-787d-967c0979c197', 'login', 'register', 'logout', 'login_one_time_token', 'one_time_token', 'extend_token_expires', 'send_account_deletion_email', 'confirm_delete_account', 'set_password', 'reset_password', 'forgot_password', 'send_verification_email', 'verify_email');

UPDATE meta_public.apis
      SET dbname = current_database() WHERE TRUE;

UPDATE meta_public.sites
      SET dbname = current_database() WHERE TRUE;

SET session_replication_role TO DEFAULT;

COMMIT;