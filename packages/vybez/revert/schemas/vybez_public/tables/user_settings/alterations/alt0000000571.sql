-- Revert: schemas/vybez_public/tables/user_settings/alterations/alt0000000571 from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

