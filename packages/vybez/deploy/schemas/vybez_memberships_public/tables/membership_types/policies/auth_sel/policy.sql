-- Deploy: schemas/vybez_memberships_public/tables/membership_types/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_types/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_memberships_public".membership_types FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
