-- Revert: schemas/vybez_public/tables/organization_profiles/alterations/alt0000000586 from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

