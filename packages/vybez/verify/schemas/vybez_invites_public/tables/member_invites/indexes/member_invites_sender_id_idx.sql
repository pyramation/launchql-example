-- Verify: schemas/vybez_invites_public/tables/member_invites/indexes/member_invites_sender_id_idx on pg

BEGIN;
SELECT verify_index('vybez_invites_public.member_invites', 'member_invites_sender_id_idx');
COMMIT;  

