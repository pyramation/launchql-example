-- Revert: schemas/vybez_invites_public/tables/member_invites/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_invites_public".member_invites;
COMMIT;  

