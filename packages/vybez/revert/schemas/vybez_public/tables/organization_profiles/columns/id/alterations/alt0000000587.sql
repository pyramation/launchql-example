-- Revert: schemas/vybez_public/tables/organization_profiles/columns/id/alterations/alt0000000587 from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

