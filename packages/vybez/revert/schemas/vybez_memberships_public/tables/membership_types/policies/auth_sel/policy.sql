-- Revert: schemas/vybez_memberships_public/tables/membership_types/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_memberships_public".membership_types;
COMMIT;  

