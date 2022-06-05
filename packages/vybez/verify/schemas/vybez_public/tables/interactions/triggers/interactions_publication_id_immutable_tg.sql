-- Verify: schemas/vybez_public/tables/interactions/triggers/interactions_publication_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.interactions_publication_id_immutable_tg');
COMMIT;  

