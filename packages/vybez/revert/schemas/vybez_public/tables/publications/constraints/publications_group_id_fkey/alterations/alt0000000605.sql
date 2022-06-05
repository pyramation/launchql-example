-- Revert: schemas/vybez_public/tables/publications/constraints/publications_group_id_fkey/alterations/alt0000000605 from pg

BEGIN;
COMMENT ON CONSTRAINT publications_group_id_fkey ON "vybez_public".publications IS NULL;
COMMIT;  

