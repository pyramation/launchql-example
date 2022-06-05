-- Revert: schemas/vybez_invites_public/tables/member_invites/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_invites_public".member_invites;
COMMIT;  

