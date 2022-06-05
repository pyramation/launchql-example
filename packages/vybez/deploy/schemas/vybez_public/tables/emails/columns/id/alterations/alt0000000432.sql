-- Deploy: schemas/vybez_public/tables/emails/columns/id/alterations/alt0000000432 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_public/tables/emails/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".emails 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
