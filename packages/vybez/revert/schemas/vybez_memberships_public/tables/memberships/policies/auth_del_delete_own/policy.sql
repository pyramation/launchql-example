-- Revert: schemas/vybez_memberships_public/tables/memberships/policies/auth_del_delete_own/policy from pg

BEGIN;
DROP POLICY auth_del_delete_own ON "vybez_memberships_public".memberships;
COMMIT;  

