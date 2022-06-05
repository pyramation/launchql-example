-- Revert: schemas/vybez_invites_public/tables/group_invites/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_invites_public".group_invites;
COMMIT;  

