-- Revert: schemas/vybez_invites_public/tables/group_claimed_invites/indexes/group_claimed_invites_sender_id_idx from pg

BEGIN;
DROP INDEX "vybez_invites_public".group_claimed_invites_sender_id_idx;
COMMIT;  

