-- Revert: schemas/vybez_memberships_public/tables/group_grants/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_grants DROP COLUMN created_at;
ALTER TABLE "vybez_memberships_public".group_grants DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_memberships_public".group_grants;

COMMIT;  

