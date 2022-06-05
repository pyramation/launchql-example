-- Deploy: schemas/vybez_memberships_private/tables/memberships_acl/alterations/alt0000000202 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table

BEGIN;

ALTER TABLE "vybez_memberships_private".memberships_acl
    DISABLE ROW LEVEL SECURITY;
COMMIT;
