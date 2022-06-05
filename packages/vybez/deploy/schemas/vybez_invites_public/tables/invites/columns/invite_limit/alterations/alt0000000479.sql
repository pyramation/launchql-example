-- Deploy: schemas/vybez_invites_public/tables/invites/columns/invite_limit/alterations/alt0000000479 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table
-- requires: schemas/vybez_invites_public/tables/invites/columns/invite_limit/column

BEGIN;

ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN invite_limit SET NOT NULL;
COMMIT;
