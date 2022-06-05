-- Revert: schemas/vybez_memberships_public/tables/memberships/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".memberships;
COMMIT;  

