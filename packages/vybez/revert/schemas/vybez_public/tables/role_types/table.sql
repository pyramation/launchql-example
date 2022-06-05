-- Revert: schemas/vybez_public/tables/role_types/table from pg

BEGIN;
DROP TABLE "vybez_public".role_types;
COMMIT;  

