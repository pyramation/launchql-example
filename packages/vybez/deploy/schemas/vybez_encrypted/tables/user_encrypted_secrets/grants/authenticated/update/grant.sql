-- Deploy: schemas/vybez_encrypted/tables/user_encrypted_secrets/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table

BEGIN;
GRANT UPDATE ON TABLE "vybez_encrypted".user_encrypted_secrets TO authenticated;
COMMIT;
