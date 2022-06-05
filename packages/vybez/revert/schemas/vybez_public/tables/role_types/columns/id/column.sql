-- Revert: schemas/vybez_public/tables/role_types/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".role_types DROP COLUMN id;
COMMIT;  

