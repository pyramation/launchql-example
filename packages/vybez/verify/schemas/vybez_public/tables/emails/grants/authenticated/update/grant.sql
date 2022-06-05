-- Verify: schemas/vybez_public/tables/emails/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.emails', 'update', 'authenticated');
COMMIT;  

