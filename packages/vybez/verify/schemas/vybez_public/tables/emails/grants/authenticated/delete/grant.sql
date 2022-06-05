-- Verify: schemas/vybez_public/tables/emails/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.emails', 'delete', 'authenticated');
COMMIT;  

