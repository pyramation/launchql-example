-- Revert: schemas/vybez_public/tables/organization_profiles/constraints/organization_profiles_organization_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles 
    DROP CONSTRAINT organization_profiles_organization_id_fkey;

COMMIT;  

