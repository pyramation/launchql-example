-- Revert: schemas/vybez_invites_public/tables/invites/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_invites_public".invites;
COMMIT;  

