-- Verify: schemas/vybez_invites_public/tables/member_invites/table on pg

BEGIN;
SELECT verify_table('vybez_invites_public.member_invites');
COMMIT;  

