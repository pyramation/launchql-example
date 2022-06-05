-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table

BEGIN;
GRANT UPDATE ON TABLE "vybez_simple_secrets".user_secrets TO authenticated;
COMMIT;
