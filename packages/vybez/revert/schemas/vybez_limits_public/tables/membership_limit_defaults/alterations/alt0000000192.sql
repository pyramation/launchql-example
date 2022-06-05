-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/alterations/alt0000000192 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limit_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

