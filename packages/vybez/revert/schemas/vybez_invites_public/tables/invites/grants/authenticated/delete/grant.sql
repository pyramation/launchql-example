-- Revert: schemas/vybez_invites_public/tables/invites/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_invites_public".invites FROM authenticated;
COMMIT;  

