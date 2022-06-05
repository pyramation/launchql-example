-- Deploy: schemas/vybez_invites_public/tables/claimed_invites/alterations/alt0000000487 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/claimed_invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".claimed_invites
    DISABLE ROW LEVEL SECURITY;
COMMIT;
