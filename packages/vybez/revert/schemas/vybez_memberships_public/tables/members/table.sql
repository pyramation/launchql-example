-- Revert: schemas/vybez_memberships_public/tables/members/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".members;
COMMIT;  

