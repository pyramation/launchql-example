-- Verify: schemas/vybez_invites_public/tables/invites/indexes/invites_sender_id_idx on pg

BEGIN;
SELECT verify_index('vybez_invites_public.invites', 'invites_sender_id_idx');
COMMIT;  

