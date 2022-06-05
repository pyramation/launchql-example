-- Revert: schemas/vybez_public/tables/interactions/constraints/interactions_publication_id_fkey/alterations/alt0000000628 from pg

BEGIN;
COMMENT ON CONSTRAINT interactions_publication_id_fkey ON "vybez_public".interactions IS NULL;
COMMIT;  

