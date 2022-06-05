-- Deploy: schemas/vybez_public/tables/emails/columns/email/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table

BEGIN;

ALTER TABLE "vybez_public".emails ADD COLUMN email email;
COMMIT;
