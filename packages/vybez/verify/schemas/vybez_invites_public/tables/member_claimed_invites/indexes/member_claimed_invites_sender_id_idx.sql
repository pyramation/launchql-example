-- Verify: schemas/vybez_invites_public/tables/member_claimed_invites/indexes/member_claimed_invites_sender_id_idx on pg

BEGIN;
SELECT verify_index('vybez_invites_public.member_claimed_invites', 'member_claimed_invites_sender_id_idx');
COMMIT;  

