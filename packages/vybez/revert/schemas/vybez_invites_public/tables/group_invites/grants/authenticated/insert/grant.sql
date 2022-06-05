-- Revert: schemas/vybez_invites_public/tables/group_invites/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( email, expires_at, multiple, invite_limit, entity_id, receiver_id ) ON TABLE "vybez_invites_public".group_invites FROM authenticated;
COMMIT;  

