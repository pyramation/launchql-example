-- Revert: schemas/vybez_memberships_public/tables/app_grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".app_grants;
COMMIT;  

