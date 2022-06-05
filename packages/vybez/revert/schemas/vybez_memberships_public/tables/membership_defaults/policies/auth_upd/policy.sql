-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_memberships_public".membership_defaults;
COMMIT;  

