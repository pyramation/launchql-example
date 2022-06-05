-- Verify: schemas/vybez_public/tables/connected_accounts/table on pg

BEGIN;
SELECT verify_table('vybez_public.connected_accounts');
COMMIT;  

