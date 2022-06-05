-- Revert: schemas/vybez_public/tables/interactions/constraints/interactions_user_id_fkey/alterations/alt0000000625 from pg

BEGIN;
COMMENT ON CONSTRAINT interactions_user_id_fkey ON "vybez_public".interactions IS NULL;
COMMIT;  

