-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/multiple/alterations/alt0000000526 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table
-- requires: schemas/vybez_invites_public/tables/group_invites/columns/multiple/column

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN multiple SET DEFAULT FALSE;
COMMIT;
