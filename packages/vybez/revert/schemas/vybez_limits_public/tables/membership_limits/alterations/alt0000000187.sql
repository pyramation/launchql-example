-- Revert: schemas/vybez_limits_public/tables/membership_limits/alterations/alt0000000187 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limits
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

