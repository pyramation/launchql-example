-- Deploy: schemas/vybez_invites_public/tables/member_invites/columns/multiple/alterations/alt0000000503 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table
-- requires: schemas/vybez_invites_public/tables/member_invites/columns/multiple/column

BEGIN;

ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN multiple SET NOT NULL;
COMMIT;
