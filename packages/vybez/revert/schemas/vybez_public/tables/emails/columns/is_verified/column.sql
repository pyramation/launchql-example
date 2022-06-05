-- Revert: schemas/vybez_public/tables/emails/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "vybez_public".emails DROP COLUMN is_verified;
COMMIT;  

