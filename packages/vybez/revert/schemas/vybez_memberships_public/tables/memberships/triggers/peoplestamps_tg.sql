-- Revert: schemas/vybez_memberships_public/tables/memberships/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships DROP COLUMN created_by;
ALTER TABLE "vybez_memberships_public".memberships DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_memberships_public".memberships;


COMMIT;  

