-- Revert: schemas/vybez_limits_public/tables/app_limits/alterations/alt0000000058 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limits
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

