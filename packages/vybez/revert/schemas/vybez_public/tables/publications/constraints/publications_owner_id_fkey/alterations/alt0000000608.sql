-- Revert: schemas/vybez_public/tables/publications/constraints/publications_owner_id_fkey/alterations/alt0000000608 from pg

BEGIN;
COMMENT ON CONSTRAINT publications_owner_id_fkey ON "vybez_public".publications IS NULL;
COMMIT;  

