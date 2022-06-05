-- Verify: schemas/vybez_public/tables/emails/table on pg

BEGIN;
SELECT verify_table('vybez_public.emails');
COMMIT;  

