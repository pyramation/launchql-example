-- Revert: schemas/vybez_public/tables/interaction_types/triggers/update_slg_slug from pg

BEGIN;
DROP TRIGGER update_slg_slug ON "vybez_public".interaction_types;
COMMIT;  

