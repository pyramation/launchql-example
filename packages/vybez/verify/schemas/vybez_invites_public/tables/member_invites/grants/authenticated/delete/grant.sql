-- Verify: schemas/vybez_invites_public/tables/member_invites/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_invites_public.member_invites', 'delete', 'authenticated');
COMMIT;  

