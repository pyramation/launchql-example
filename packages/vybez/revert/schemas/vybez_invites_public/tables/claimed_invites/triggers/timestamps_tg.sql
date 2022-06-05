-- Revert: schemas/vybez_invites_public/tables/claimed_invites/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_invites_public".claimed_invites DROP COLUMN created_at;
ALTER TABLE "vybez_invites_public".claimed_invites DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_invites_public".claimed_invites;

COMMIT;  

