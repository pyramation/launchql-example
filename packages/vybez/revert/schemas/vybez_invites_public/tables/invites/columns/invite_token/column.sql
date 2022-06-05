-- Revert: schemas/vybez_invites_public/tables/invites/columns/invite_token/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites DROP COLUMN invite_token;
COMMIT;  

