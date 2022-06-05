-- Revert: schemas/vybez_public/tables/groups/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN owner_id;
COMMIT;  

