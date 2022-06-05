-- Revert: schemas/vybez_public/tables/role_types/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_public".role_types DROP COLUMN name;
COMMIT;  

