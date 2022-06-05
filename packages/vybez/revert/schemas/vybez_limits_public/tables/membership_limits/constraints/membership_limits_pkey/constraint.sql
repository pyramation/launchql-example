-- Revert: schemas/vybez_limits_public/tables/membership_limits/constraints/membership_limits_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limits 
    DROP CONSTRAINT membership_limits_pkey;

COMMIT;  

