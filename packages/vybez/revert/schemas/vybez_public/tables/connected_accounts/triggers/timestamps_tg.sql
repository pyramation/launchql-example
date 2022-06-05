-- Revert: schemas/vybez_public/tables/connected_accounts/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts DROP COLUMN created_at;
ALTER TABLE "vybez_public".connected_accounts DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".connected_accounts;

COMMIT;  

