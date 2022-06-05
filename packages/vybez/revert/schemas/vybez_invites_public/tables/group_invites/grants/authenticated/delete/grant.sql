-- Revert: schemas/vybez_invites_public/tables/group_invites/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_invites_public".group_invites FROM authenticated;
COMMIT;  

