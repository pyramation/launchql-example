-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_owner_grants DROP COLUMN created_at;
ALTER TABLE "vybez_memberships_public".app_owner_grants DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_memberships_public".app_owner_grants;

COMMIT;  

