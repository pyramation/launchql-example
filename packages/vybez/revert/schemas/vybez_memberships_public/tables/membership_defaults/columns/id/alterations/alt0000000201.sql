-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/columns/id/alterations/alt0000000201 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

