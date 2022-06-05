-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/multiple/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites DROP COLUMN multiple;
COMMIT;  

