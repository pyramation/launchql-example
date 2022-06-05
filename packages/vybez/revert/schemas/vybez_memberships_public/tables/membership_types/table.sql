-- Revert: schemas/vybez_memberships_public/tables/membership_types/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".membership_types;
COMMIT;  

