-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".membership_defaults;
COMMIT;  

