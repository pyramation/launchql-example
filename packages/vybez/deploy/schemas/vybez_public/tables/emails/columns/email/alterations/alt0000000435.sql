-- Deploy: schemas/vybez_public/tables/emails/columns/email/alterations/alt0000000435 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_public/tables/emails/columns/email/column

BEGIN;

ALTER TABLE "vybez_public".emails 
    ALTER COLUMN email SET NOT NULL;
COMMIT;
