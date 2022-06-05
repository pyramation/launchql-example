-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/multiple/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites DROP COLUMN multiple;
COMMIT;  

