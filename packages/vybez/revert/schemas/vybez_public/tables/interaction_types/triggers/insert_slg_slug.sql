-- Revert: schemas/vybez_public/tables/interaction_types/triggers/insert_slg_slug from pg

BEGIN;
DROP TRIGGER insert_slg_slug ON "vybez_public".interaction_types;
COMMIT;  

