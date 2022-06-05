-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/columns/id/alterations/alt0000000194 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limit_defaults 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

