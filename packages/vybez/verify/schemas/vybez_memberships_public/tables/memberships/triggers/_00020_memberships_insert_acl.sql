-- Verify: schemas/vybez_memberships_public/tables/memberships/triggers/_00020_memberships_insert_acl on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._00020_memberships_insert_acl');
COMMIT;  

