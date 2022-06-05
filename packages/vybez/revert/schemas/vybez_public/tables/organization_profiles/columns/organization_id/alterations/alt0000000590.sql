-- Revert: schemas/vybez_public/tables/organization_profiles/columns/organization_id/alterations/alt0000000590 from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles 
    ALTER COLUMN organization_id DROP NOT NULL;


COMMIT;  

