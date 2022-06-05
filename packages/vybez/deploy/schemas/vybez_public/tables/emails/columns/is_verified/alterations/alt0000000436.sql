-- Deploy: schemas/vybez_public/tables/emails/columns/is_verified/alterations/alt0000000436 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_public/tables/emails/columns/is_verified/column

BEGIN;

ALTER TABLE "vybez_public".emails 
    ALTER COLUMN is_verified SET NOT NULL;
COMMIT;
