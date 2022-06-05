-- Verify: schemas/vybez_public/tables/organization_profiles/indexes/organization_profiles_organization_id_idx on pg

BEGIN;
SELECT verify_index('vybez_public.organization_profiles', 'organization_profiles_organization_id_idx');
COMMIT;  

