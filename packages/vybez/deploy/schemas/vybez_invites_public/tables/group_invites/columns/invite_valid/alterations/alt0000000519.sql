-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/invite_valid/alterations/alt0000000519 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table
-- requires: schemas/vybez_invites_public/tables/group_invites/columns/invite_valid/column

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN invite_valid SET NOT NULL;
COMMIT;
