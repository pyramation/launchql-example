-- Revert: schemas/vybez_invites_public/tables/invites/indexes/invites_expires_at_idx from pg

BEGIN;
DROP INDEX "vybez_invites_public".invites_expires_at_idx;
COMMIT;  

