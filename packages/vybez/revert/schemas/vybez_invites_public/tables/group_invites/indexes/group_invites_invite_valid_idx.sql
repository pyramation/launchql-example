-- Revert: schemas/vybez_invites_public/tables/group_invites/indexes/group_invites_invite_valid_idx from pg

BEGIN;
DROP INDEX "vybez_invites_public".group_invites_invite_valid_idx;
COMMIT;  

