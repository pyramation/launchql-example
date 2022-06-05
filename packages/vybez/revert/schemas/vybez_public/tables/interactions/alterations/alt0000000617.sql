-- Revert: schemas/vybez_public/tables/interactions/alterations/alt0000000617 from pg

BEGIN;


ALTER TABLE "vybez_public".interactions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

