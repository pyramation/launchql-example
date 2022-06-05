-- Revert: schemas/vybez_invites_public/tables/claimed_invites/indexes/claimed_invites_sender_id_idx from pg

BEGIN;
DROP INDEX "vybez_invites_public".claimed_invites_sender_id_idx;
COMMIT;  

