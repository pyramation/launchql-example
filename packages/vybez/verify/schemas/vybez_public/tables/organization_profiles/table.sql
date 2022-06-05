-- Verify: schemas/vybez_public/tables/organization_profiles/table on pg

BEGIN;
SELECT verify_table('vybez_public.organization_profiles');
COMMIT;  

