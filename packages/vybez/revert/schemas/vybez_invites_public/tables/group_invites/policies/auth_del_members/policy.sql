-- Revert: schemas/vybez_invites_public/tables/group_invites/policies/auth_del_members/policy from pg

BEGIN;
DROP POLICY auth_del_members ON "vybez_invites_public".group_invites;
COMMIT;  

