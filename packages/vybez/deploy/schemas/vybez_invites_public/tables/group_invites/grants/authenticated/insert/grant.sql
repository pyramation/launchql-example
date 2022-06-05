-- Deploy: schemas/vybez_invites_public/tables/group_invites/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table

BEGIN;
GRANT INSERT ( email, expires_at, multiple, invite_limit, entity_id, receiver_id ) ON TABLE "vybez_invites_public".group_invites TO authenticated;
COMMIT;
