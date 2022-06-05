-- Deploy: schemas/vybez_public/tables/emails/columns/owner_id/alterations/alt0000000433 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_public/tables/emails/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_public".emails 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
