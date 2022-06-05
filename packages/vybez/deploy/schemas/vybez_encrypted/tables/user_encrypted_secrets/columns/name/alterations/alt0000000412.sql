-- Deploy: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/name/alterations/alt0000000412 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/name/column

BEGIN;

ALTER TABLE "vybez_encrypted".user_encrypted_secrets 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
