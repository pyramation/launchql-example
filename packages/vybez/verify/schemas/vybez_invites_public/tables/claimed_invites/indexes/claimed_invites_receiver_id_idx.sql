-- Verify: schemas/vybez_invites_public/tables/claimed_invites/indexes/claimed_invites_receiver_id_idx on pg

BEGIN;
SELECT verify_index('vybez_invites_public.claimed_invites', 'claimed_invites_receiver_id_idx');
COMMIT;  

