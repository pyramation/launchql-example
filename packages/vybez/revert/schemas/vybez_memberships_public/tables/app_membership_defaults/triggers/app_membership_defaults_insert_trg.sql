-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/triggers/app_membership_defaults_insert_trg from pg

BEGIN;
DROP TRIGGER app_membership_defaults_insert_trg ON "vybez_memberships_public".app_membership_defaults;
COMMIT;  

