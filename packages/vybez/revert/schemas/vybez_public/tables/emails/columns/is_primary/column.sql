-- Revert: schemas/vybez_public/tables/emails/columns/is_primary/column from pg

BEGIN;


ALTER TABLE "vybez_public".emails DROP COLUMN is_primary;
COMMIT;  

