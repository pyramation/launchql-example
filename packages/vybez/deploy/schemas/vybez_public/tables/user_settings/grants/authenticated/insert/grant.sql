-- Deploy: schemas/vybez_public/tables/user_settings/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;
GRANT INSERT ON TABLE "vybez_public".user_settings TO authenticated;
COMMIT;
