-- Verify: schemas/vybez_public/tables/interaction_types/triggers/interaction_types_slug_immutable_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.interaction_types_slug_immutable_tg');
COMMIT;  

