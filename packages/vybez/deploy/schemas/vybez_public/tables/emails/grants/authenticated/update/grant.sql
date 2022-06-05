-- Deploy: schemas/vybez_public/tables/emails/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table

BEGIN;
GRANT UPDATE ( email, owner_id, is_primary ) ON TABLE "vybez_public".emails TO authenticated;
COMMIT;
