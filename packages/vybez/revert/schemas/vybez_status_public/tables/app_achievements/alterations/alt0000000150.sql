-- Revert: schemas/vybez_status_public/tables/app_achievements/alterations/alt0000000150 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_achievements
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

