-- Verify: schemas/vybez_limits_public/tables/membership_limit_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_limits_public.membership_limit_defaults');
COMMIT;  

