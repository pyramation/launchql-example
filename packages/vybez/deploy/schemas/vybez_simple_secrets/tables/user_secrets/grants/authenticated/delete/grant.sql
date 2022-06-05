-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table

BEGIN;
GRANT DELETE ON TABLE "vybez_simple_secrets".user_secrets TO authenticated;
COMMIT;
