-- Verify: schemas/vybez_memberships_public/tables/app_memberships/triggers/_99999_app_memberships_delete_acl on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._99999_app_memberships_delete_acl');
COMMIT;  

