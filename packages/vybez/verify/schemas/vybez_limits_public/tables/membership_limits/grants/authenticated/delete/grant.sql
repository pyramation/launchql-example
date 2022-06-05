-- Verify: schemas/vybez_limits_public/tables/membership_limits/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.membership_limits', 'delete', 'authenticated');
COMMIT;  

