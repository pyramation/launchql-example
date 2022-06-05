-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".app_membership_defaults;
COMMIT;  

