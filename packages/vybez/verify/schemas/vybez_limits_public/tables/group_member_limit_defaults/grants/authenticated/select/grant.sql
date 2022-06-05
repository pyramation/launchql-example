-- Verify: schemas/vybez_limits_public/tables/group_member_limit_defaults/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.group_member_limit_defaults', 'select', 'authenticated');
COMMIT;  

