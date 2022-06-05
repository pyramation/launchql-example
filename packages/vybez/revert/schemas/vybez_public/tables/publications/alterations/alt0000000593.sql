-- Revert: schemas/vybez_public/tables/publications/alterations/alt0000000593 from pg

BEGIN;


ALTER TABLE "vybez_public".publications
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

