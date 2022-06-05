-- Deploy: schemas/vybez_invites_public/tables/group_claimed_invites/columns/entity_id/alterations/alt0000000533 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_claimed_invites/table
-- requires: schemas/vybez_invites_public/tables/group_claimed_invites/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_invites_public".group_claimed_invites 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
