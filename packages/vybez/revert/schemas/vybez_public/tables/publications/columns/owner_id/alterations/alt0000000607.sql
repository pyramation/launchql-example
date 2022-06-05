-- Revert: schemas/vybez_public/tables/publications/columns/owner_id/alterations/alt0000000607 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

