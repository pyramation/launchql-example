-- Revert: schemas/vybez_invites_public/tables/invites/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_invites_public".invites FROM authenticated;
COMMIT;  

