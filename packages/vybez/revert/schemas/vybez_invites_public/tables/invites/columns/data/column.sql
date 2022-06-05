-- Revert: schemas/vybez_invites_public/tables/invites/columns/data/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites DROP COLUMN data;
COMMIT;  

