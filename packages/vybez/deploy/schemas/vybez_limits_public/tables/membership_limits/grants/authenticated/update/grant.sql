-- Deploy: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limits/table

BEGIN;
GRANT UPDATE ON TABLE "vybez_limits_public".membership_limits TO authenticated;
COMMIT;
