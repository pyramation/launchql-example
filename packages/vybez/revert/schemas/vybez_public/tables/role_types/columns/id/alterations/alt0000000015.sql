-- Revert: schemas/vybez_public/tables/role_types/columns/id/alterations/alt0000000015 from pg

BEGIN;


ALTER TABLE "vybez_public".role_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

