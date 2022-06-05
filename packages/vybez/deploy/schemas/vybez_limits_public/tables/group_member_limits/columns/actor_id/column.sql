-- Deploy: schemas/vybez_limits_public/tables/group_member_limits/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".group_member_limits ADD COLUMN actor_id uuid;
COMMIT;
