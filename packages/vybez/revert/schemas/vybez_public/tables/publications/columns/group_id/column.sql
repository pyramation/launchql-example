-- Revert: schemas/vybez_public/tables/publications/columns/group_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN group_id;
COMMIT;  

