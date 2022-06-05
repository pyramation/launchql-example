-- Revert: schemas/vybez_roles_public/tables/auth_accounts/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts DROP COLUMN created_at;
ALTER TABLE "vybez_roles_public".auth_accounts DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_roles_public".auth_accounts;

COMMIT;  

