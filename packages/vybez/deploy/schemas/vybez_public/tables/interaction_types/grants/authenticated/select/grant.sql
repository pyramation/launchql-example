-- Deploy: schemas/vybez_public/tables/interaction_types/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;
GRANT SELECT ON TABLE "vybez_public".interaction_types TO authenticated;
COMMIT;
