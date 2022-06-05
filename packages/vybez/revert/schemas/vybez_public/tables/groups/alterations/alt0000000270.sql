-- Revert: schemas/vybez_public/tables/groups/alterations/alt0000000270 from pg

BEGIN;


ALTER TABLE "vybez_public".groups
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

