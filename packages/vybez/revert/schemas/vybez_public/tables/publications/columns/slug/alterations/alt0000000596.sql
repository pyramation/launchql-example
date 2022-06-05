-- Revert: schemas/vybez_public/tables/publications/columns/slug/alterations/alt0000000596 from pg

BEGIN;
ALTER TABLE "vybez_public".publications DROP CONSTRAINT publications_slug_chk;
COMMIT;  

