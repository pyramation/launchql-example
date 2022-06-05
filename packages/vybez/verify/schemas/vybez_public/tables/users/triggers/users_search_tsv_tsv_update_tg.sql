-- Verify: schemas/vybez_public/tables/users/triggers/users_search_tsv_tsv_update_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.users_search_tsv_tsv_update_tg');
COMMIT;  

