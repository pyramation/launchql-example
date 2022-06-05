-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/invite_count/alterations/alt0000000524 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table
-- requires: schemas/vybez_invites_public/tables/group_invites/columns/invite_count/column

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN invite_count SET DEFAULT 0;
COMMIT;
