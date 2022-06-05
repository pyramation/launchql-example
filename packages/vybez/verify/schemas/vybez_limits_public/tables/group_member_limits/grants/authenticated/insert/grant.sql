-- Verify: schemas/vybez_limits_public/tables/group_member_limits/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.group_member_limits', 'insert', 'authenticated');
COMMIT;  

