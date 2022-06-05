-- Revert: schemas/vybez_public/tables/publications/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "vybez_public".publications;
COMMIT;  

