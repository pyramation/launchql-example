-- Revert: schemas/vybez_public/tables/interactions/columns/interaction_type_id/alterations/alt0000000622 from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN interaction_type_id DROP NOT NULL;


COMMIT;  

