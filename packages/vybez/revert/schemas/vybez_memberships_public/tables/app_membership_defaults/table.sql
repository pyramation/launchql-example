-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".app_membership_defaults;
COMMIT;  

