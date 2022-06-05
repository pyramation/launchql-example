-- Deploy: schemas/vybez_memberships_public/tables/memberships/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table

BEGIN;
GRANT INSERT ( actor_id, entity_id ) ON TABLE "vybez_memberships_public".memberships TO authenticated;
COMMIT;
