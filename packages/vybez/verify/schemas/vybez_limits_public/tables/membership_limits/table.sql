-- Verify: schemas/vybez_limits_public/tables/membership_limits/table on pg

BEGIN;
SELECT verify_table('vybez_limits_public.membership_limits');
COMMIT;  

