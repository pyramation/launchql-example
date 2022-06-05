-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".membership_defaults;
COMMIT;  

