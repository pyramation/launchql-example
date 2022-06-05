-- Revert: schemas/vybez_public/tables/interactions/columns/user_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".interactions DROP COLUMN user_id;
COMMIT;  

