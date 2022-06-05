-- Deploy: schemas/vybez_public/tables/phone_numbers/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table

BEGIN;
GRANT INSERT ( cc, number, owner_id, is_primary ) ON TABLE "vybez_public".phone_numbers TO authenticated;
COMMIT;
