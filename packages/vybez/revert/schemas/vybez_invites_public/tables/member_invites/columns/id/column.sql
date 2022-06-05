-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites DROP COLUMN id;
COMMIT;  

