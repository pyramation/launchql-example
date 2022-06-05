-- Revert: schemas/vybez_memberships_public/tables/group_memberships/triggers/_99999_group_memberships_delete_acl from pg

BEGIN;
DROP TRIGGER _99999_group_memberships_delete_acl ON "vybez_memberships_public".group_memberships;
COMMIT;  

