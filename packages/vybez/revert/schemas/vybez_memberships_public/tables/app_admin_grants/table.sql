-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".app_admin_grants;
COMMIT;  

