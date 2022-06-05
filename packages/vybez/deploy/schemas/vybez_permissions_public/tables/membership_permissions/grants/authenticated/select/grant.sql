-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;
GRANT SELECT ON TABLE "vybez_permissions_public".membership_permissions TO authenticated;
COMMIT;
