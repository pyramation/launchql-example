-- Revert: schemas/vybez_public/tables/publications/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN owner_id;
COMMIT;  

