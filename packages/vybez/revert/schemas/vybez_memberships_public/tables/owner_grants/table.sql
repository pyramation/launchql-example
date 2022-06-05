-- Revert: schemas/vybez_memberships_public/tables/owner_grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".owner_grants;
COMMIT;  

