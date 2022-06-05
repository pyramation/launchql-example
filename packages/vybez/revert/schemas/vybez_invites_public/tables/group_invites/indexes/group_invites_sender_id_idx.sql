-- Revert: schemas/vybez_invites_public/tables/group_invites/indexes/group_invites_sender_id_idx from pg

BEGIN;
DROP INDEX "vybez_invites_public".group_invites_sender_id_idx;
COMMIT;  

