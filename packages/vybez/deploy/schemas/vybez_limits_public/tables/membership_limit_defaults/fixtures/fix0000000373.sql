-- Deploy: schemas/vybez_limits_public/tables/membership_limit_defaults/fixtures/fix0000000373 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/table

BEGIN;
INSERT INTO "vybez_limits_public".membership_limit_defaults (name, max) VALUES ('groups', 100);
COMMIT;
