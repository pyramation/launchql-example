-- Revert: schemas/vybez_invites_public/tables/group_invites/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_invites_public".group_invites;
COMMIT;  

