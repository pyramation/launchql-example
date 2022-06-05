-- Revert: schemas/vybez_invites_public/tables/member_invites/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_invites_public".member_invites FROM authenticated;
COMMIT;  

