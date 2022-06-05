-- Revert: schemas/vybez_invites_public/tables/group_claimed_invites/columns/sender_id/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_claimed_invites DROP COLUMN sender_id;
COMMIT;  

