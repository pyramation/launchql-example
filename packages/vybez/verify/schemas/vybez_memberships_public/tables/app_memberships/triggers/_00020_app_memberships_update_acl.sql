-- Verify: schemas/vybez_memberships_public/tables/app_memberships/triggers/_00020_app_memberships_update_acl on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._00020_app_memberships_update_acl');
COMMIT;  

