-- Deploy: schemas/vybez_public/tables/emails/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table

BEGIN;

ALTER TABLE "vybez_public".emails
    ENABLE ROW LEVEL SECURITY;
COMMIT;
