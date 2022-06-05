-- Revert: schemas/vybez_public/tables/emails/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".emails DROP COLUMN id;
COMMIT;  

