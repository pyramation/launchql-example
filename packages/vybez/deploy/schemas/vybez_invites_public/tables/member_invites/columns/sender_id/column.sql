-- Deploy: schemas/vybez_invites_public/tables/member_invites/columns/sender_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".member_invites ADD COLUMN sender_id uuid;
COMMIT;
