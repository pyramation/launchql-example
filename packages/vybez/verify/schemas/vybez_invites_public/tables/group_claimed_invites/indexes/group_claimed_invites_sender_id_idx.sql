-- Verify: schemas/vybez_invites_public/tables/group_claimed_invites/indexes/group_claimed_invites_sender_id_idx on pg

BEGIN;
SELECT verify_index('vybez_invites_public.group_claimed_invites', 'group_claimed_invites_sender_id_idx');
COMMIT;  

