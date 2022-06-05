-- Deploy: schemas/vybez_invites_public/tables/member_invites/columns/invite_limit/alterations/alt0000000500 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table
-- requires: schemas/vybez_invites_public/tables/member_invites/columns/invite_limit/column

BEGIN;

ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN invite_limit SET DEFAULT -1;
COMMIT;
