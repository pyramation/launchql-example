-- Verify: schemas/vybez_public/tables/organization_profiles/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.organization_profiles', 'update', 'authenticated');
COMMIT;  

