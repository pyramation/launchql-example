-- Revert: schemas/vybez_invites_public/tables/invites/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_invites_public".invites FROM authenticated;
COMMIT;  

