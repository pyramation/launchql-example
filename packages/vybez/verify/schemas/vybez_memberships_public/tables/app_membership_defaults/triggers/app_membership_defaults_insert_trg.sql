-- Verify: schemas/vybez_memberships_public/tables/app_membership_defaults/triggers/app_membership_defaults_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public.app_membership_defaults_insert_trg');
COMMIT;  

