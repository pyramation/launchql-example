-- Deploy: schemas/vybez_limits_public/tables/membership_limit_defaults/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/table

BEGIN;
GRANT INSERT ON TABLE "vybez_limits_public".membership_limit_defaults TO authenticated;
COMMIT;
