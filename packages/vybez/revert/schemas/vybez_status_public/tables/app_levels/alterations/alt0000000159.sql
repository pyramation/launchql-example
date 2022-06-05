-- Revert: schemas/vybez_status_public/tables/app_levels/alterations/alt0000000159 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_levels
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

