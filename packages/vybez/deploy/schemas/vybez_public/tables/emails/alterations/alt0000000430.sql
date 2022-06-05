-- Deploy: schemas/vybez_public/tables/emails/alterations/alt0000000430 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table

BEGIN;

ALTER TABLE "vybez_public".emails
    DISABLE ROW LEVEL SECURITY;
COMMIT;
