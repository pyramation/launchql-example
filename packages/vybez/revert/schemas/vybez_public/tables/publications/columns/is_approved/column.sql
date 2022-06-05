-- Revert: schemas/vybez_public/tables/publications/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN is_approved;
COMMIT;  

