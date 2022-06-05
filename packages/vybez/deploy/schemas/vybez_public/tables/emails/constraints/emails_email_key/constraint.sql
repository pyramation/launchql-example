-- Deploy: schemas/vybez_public/tables/emails/constraints/emails_email_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table

BEGIN;

ALTER TABLE "vybez_public".emails
    ADD CONSTRAINT emails_email_key UNIQUE (email);
COMMIT;
