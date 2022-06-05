-- Deploy: schemas/vybez_memberships_private/tables/memberships_acl/grants/public/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_private".memberships_acl TO public;
COMMIT;
