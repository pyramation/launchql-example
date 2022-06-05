-- Deploy: schemas/vybez_invites_public/tables/invites/columns/expires_at/alterations/alt0000000486 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table
-- requires: schemas/vybez_invites_public/tables/invites/columns/expires_at/column

BEGIN;

ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN expires_at SET DEFAULT NOW() + interval '6 months';
COMMIT;
