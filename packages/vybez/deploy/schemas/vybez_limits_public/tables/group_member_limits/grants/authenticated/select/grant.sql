-- Deploy: schemas/vybez_limits_public/tables/group_member_limits/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limits/table

BEGIN;
GRANT SELECT ON TABLE "vybez_limits_public".group_member_limits TO authenticated;
COMMIT;
