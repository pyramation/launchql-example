-- Revert: schemas/vybez_public/tables/interaction_types/columns/id/alterations/alt0000000610 from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

