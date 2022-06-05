-- Verify: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.membership_limits', 'select', 'authenticated');
COMMIT;  

