-- Revert: schemas/vybez_memberships_public/tables/group_memberships/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships DROP COLUMN created_by;
ALTER TABLE "vybez_memberships_public".group_memberships DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_memberships_public".group_memberships;


COMMIT;  

