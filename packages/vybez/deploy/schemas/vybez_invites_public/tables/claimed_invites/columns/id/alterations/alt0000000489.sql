-- Deploy: schemas/vybez_invites_public/tables/claimed_invites/columns/id/alterations/alt0000000489 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/claimed_invites/table
-- requires: schemas/vybez_invites_public/tables/claimed_invites/columns/id/column

BEGIN;

ALTER TABLE "vybez_invites_public".claimed_invites 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
