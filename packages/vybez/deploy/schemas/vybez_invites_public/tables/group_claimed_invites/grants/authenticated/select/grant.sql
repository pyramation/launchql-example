-- Deploy: schemas/vybez_invites_public/tables/group_claimed_invites/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_claimed_invites/table

BEGIN;
GRANT SELECT ON TABLE "vybez_invites_public".group_claimed_invites TO authenticated;
COMMIT;
