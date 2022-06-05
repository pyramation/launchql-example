-- Revert: schemas/vybez_public/tables/groups/columns/limited_to_location/alterations/alt0000000273 from pg

BEGIN;


ALTER TABLE "vybez_public".groups 
    ALTER COLUMN limited_to_location DROP NOT NULL;


COMMIT;  

