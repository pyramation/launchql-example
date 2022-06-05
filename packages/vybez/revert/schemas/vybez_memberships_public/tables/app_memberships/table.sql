-- Revert: schemas/vybez_memberships_public/tables/app_memberships/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".app_memberships;
COMMIT;  

