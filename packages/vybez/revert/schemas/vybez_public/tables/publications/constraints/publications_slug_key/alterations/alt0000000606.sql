-- Revert: schemas/vybez_public/tables/publications/constraints/publications_slug_key/alterations/alt0000000606 from pg

BEGIN;
COMMENT ON CONSTRAINT publications_slug_key ON "vybez_public".publications IS NULL;
COMMIT;  

