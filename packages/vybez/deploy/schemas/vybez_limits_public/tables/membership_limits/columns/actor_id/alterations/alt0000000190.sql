-- Deploy: schemas/vybez_limits_public/tables/membership_limits/columns/actor_id/alterations/alt0000000190 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limits/table
-- requires: schemas/vybez_limits_public/tables/membership_limits/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limits 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
