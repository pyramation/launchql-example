-- Revert: schemas/vybez_invites_public/tables/invites/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_invites_public".invites;
COMMIT;  

