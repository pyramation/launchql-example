-- Revert: schemas/vybez_invites_public/tables/group_invites/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_invites_public".group_invites;
COMMIT;  

