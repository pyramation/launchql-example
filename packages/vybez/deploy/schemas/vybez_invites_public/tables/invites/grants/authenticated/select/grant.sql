-- Deploy: schemas/vybez_invites_public/tables/invites/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table

BEGIN;
GRANT SELECT ON TABLE "vybez_invites_public".invites TO authenticated;
COMMIT;
