-- Deploy: schemas/vybez_public/tables/emails/constraints/emails_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table

BEGIN;

ALTER TABLE "vybez_public".emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);
COMMIT;
