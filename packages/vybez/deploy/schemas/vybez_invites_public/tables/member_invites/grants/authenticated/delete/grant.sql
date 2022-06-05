-- Deploy: schemas/vybez_invites_public/tables/member_invites/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table

BEGIN;
GRANT DELETE ON TABLE "vybez_invites_public".member_invites TO authenticated;
COMMIT;
