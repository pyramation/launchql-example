-- Verify: schemas/vybez_invites_public/tables/member_claimed_invites/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_invites_public.member_claimed_invites', 'select', 'authenticated');
COMMIT;  

