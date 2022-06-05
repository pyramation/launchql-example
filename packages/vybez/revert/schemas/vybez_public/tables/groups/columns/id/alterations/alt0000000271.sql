-- Revert: schemas/vybez_public/tables/groups/columns/id/alterations/alt0000000271 from pg

BEGIN;


ALTER TABLE "vybez_public".groups 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

