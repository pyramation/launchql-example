-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/expires_at/alterations/alt0000000527 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table
-- requires: schemas/vybez_invites_public/tables/group_invites/columns/expires_at/column

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN expires_at SET NOT NULL;
COMMIT;
