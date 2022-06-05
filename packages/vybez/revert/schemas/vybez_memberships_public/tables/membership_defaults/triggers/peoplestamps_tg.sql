-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults DROP COLUMN created_by;
ALTER TABLE "vybez_memberships_public".membership_defaults DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_memberships_public".membership_defaults;


COMMIT;  

