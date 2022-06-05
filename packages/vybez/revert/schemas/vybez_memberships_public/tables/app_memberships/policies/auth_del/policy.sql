-- Revert: schemas/vybez_memberships_public/tables/app_memberships/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_memberships_public".app_memberships;
COMMIT;  

