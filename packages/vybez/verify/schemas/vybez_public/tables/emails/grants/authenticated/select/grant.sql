-- Verify: schemas/vybez_public/tables/emails/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.emails', 'select', 'authenticated');
COMMIT;  

