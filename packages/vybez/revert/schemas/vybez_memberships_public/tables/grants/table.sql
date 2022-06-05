-- Revert: schemas/vybez_memberships_public/tables/grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".grants;
COMMIT;  

