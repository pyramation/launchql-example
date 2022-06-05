-- Verify: schemas/vybez_public/tables/emails/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.emails', 'insert', 'authenticated');
COMMIT;  

