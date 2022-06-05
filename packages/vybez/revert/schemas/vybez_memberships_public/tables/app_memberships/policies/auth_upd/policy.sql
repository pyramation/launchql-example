-- Revert: schemas/vybez_memberships_public/tables/app_memberships/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_memberships_public".app_memberships;
COMMIT;  

