-- Deploy: schemas/vybez_public/tables/phone_numbers/constraints/phone_numbers_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table

BEGIN;

ALTER TABLE "vybez_public".phone_numbers
    ADD CONSTRAINT phone_numbers_pkey PRIMARY KEY (id);
COMMIT;
