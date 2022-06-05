-- Deploy: schemas/vybez_memberships_public/tables/memberships/columns/is_banned/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships ADD COLUMN is_banned boolean;
COMMIT;
