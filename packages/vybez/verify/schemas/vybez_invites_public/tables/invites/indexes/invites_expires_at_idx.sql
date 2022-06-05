-- Verify: schemas/vybez_invites_public/tables/invites/indexes/invites_expires_at_idx on pg

BEGIN;
SELECT verify_index('vybez_invites_public.invites', 'invites_expires_at_idx');
COMMIT;  

