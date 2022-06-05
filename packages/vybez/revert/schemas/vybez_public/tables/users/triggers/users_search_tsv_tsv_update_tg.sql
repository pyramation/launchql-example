-- Revert: schemas/vybez_public/tables/users/triggers/users_search_tsv_tsv_update_tg from pg

BEGIN;
DROP TRIGGER users_search_tsv_tsv_update_tg ON "vybez_public".users;
COMMIT;  

