-- Revert: schemas/vybez_memberships_public/tables/app_memberships/triggers/_99999_app_memberships_banned_trg from pg

BEGIN;
DROP TRIGGER _99999_app_memberships_banned_trg ON "vybez_memberships_public".app_memberships;
COMMIT;  

