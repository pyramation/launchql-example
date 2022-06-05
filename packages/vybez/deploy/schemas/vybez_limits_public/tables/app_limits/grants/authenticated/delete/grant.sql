-- Deploy: schemas/vybez_limits_public/tables/app_limits/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limits/table

BEGIN;
GRANT DELETE ON TABLE "vybez_limits_public".app_limits TO authenticated;
COMMIT;
