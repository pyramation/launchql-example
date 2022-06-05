-- Revert: schemas/vybez_invites_public/tables/invites/indexes/invites_invite_valid_idx from pg

BEGIN;
DROP INDEX "vybez_invites_public".invites_invite_valid_idx;
COMMIT;  

