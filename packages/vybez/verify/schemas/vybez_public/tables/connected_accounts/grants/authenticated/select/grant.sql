-- Verify: schemas/vybez_public/tables/connected_accounts/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.connected_accounts', 'select', 'authenticated');
COMMIT;  

