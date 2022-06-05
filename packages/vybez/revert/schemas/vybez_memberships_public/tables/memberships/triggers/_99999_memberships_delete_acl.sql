-- Revert: schemas/vybez_memberships_public/tables/memberships/triggers/_99999_memberships_delete_acl from pg

BEGIN;
DROP TRIGGER _99999_memberships_delete_acl ON "vybez_memberships_public".memberships;
COMMIT;  

