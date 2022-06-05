-- Revert: schemas/vybez_memberships_public/tables/memberships/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".memberships;
COMMIT;  

