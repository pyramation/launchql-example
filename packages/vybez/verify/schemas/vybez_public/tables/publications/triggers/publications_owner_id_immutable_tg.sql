-- Verify: schemas/vybez_public/tables/publications/triggers/publications_owner_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.publications_owner_id_immutable_tg');
COMMIT;  

