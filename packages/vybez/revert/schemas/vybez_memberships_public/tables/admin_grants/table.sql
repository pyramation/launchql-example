-- Revert: schemas/vybez_memberships_public/tables/admin_grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".admin_grants;
COMMIT;  

