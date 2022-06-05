-- Deploy: schemas/vybez_invites_public/tables/invites/columns/id/alterations/alt0000000471 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table
-- requires: schemas/vybez_invites_public/tables/invites/columns/id/column

BEGIN;

ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
