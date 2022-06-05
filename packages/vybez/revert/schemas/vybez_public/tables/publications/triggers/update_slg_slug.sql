-- Revert: schemas/vybez_public/tables/publications/triggers/update_slg_slug from pg

BEGIN;
DROP TRIGGER update_slg_slug ON "vybez_public".publications;
COMMIT;  

