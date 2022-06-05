-- Revert: schemas/vybez_invites_public/tables/member_invites/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_invites_public".member_invites FROM authenticated;
COMMIT;  

