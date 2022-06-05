-- Verify: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.membership_limits', 'update', 'authenticated');
COMMIT;  

