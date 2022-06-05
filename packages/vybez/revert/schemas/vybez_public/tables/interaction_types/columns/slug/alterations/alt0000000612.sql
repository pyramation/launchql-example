-- Revert: schemas/vybez_public/tables/interaction_types/columns/slug/alterations/alt0000000612 from pg

BEGIN;
ALTER TABLE "vybez_public".interaction_types DROP CONSTRAINT interaction_types_slug_chk;
COMMIT;  

