-- Deploy: schemas/vybez_limits_public/tables/group_member_limit_defaults/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limit_defaults/table

BEGIN;
GRANT UPDATE ON TABLE "vybez_limits_public".group_member_limit_defaults TO authenticated;
COMMIT;
