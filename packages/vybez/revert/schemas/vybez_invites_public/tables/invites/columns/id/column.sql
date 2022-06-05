-- Revert: schemas/vybez_invites_public/tables/invites/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites DROP COLUMN id;
COMMIT;  

