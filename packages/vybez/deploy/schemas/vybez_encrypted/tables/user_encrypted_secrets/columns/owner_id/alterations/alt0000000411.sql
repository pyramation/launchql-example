-- Deploy: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/owner_id/alterations/alt0000000411 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_encrypted".user_encrypted_secrets 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
