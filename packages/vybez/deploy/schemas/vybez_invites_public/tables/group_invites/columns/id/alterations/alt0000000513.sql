-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/id/alterations/alt0000000513 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table
-- requires: schemas/vybez_invites_public/tables/group_invites/columns/id/column

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
