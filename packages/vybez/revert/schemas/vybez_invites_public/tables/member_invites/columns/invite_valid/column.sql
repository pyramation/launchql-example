-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/invite_valid/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites DROP COLUMN invite_valid;
COMMIT;  

