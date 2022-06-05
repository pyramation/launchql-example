-- Revert: schemas/vybez_public/tables/publications/columns/bounds/alterations/alt0000000604 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".publications.bounds IS NULL;
COMMIT;  

