-- Deploy: schemas/vybez_invites_public/tables/member_claimed_invites/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_claimed_invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".member_claimed_invites ADD COLUMN entity_id uuid;
COMMIT;
