-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/columns/id/alterations/alt0000000193 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limit_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

