-- Revert: schemas/vybez_public/tables/interactions/triggers/interactions_actor_id_immutable_tg from pg

BEGIN;
DROP TRIGGER interactions_actor_id_immutable_tg ON "vybez_public".interactions;
COMMIT;  

