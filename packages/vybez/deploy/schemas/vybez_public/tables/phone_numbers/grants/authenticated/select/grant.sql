-- Deploy: schemas/vybez_public/tables/phone_numbers/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table

BEGIN;
GRANT SELECT ON TABLE "vybez_public".phone_numbers TO authenticated;
COMMIT;