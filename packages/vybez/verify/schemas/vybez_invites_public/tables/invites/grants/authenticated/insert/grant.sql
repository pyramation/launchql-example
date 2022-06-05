-- Verify: schemas/vybez_invites_public/tables/invites/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_invites_public.invites', 'insert', 'authenticated');
COMMIT;  

