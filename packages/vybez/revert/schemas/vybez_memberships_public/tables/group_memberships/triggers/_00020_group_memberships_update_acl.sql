-- Revert: schemas/vybez_memberships_public/tables/group_memberships/triggers/_00020_group_memberships_update_acl from pg

BEGIN;
DROP TRIGGER _00020_group_memberships_update_acl ON "vybez_memberships_public".group_memberships;
COMMIT;  

