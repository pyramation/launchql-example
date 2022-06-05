-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/receiver_id/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites DROP COLUMN receiver_id;
COMMIT;  

