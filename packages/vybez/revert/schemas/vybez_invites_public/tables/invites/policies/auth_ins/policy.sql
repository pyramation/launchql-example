-- Revert: schemas/vybez_invites_public/tables/invites/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_invites_public".invites;
COMMIT;  

