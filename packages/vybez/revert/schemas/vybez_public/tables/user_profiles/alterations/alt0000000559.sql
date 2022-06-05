-- Revert: schemas/vybez_public/tables/user_profiles/alterations/alt0000000559 from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

