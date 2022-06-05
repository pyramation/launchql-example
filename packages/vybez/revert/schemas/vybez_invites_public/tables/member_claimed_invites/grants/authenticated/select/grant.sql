-- Revert: schemas/vybez_invites_public/tables/member_claimed_invites/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_invites_public".member_claimed_invites FROM authenticated;
COMMIT;  

