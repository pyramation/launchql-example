-- Revert: schemas/vybez_public/tables/publications/triggers/publications_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER publications_owner_id_immutable_tg ON "vybez_public".publications;
COMMIT;  

