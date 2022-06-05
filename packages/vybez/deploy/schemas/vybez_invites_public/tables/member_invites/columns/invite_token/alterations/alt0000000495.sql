-- Deploy: schemas/vybez_invites_public/tables/member_invites/columns/invite_token/alterations/alt0000000495 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table
-- requires: schemas/vybez_invites_public/tables/member_invites/columns/invite_token/column

BEGIN;

ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN invite_token SET NOT NULL;
COMMIT;
