-- Deploy: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table

BEGIN;

ALTER TABLE "vybez_encrypted".user_encrypted_secrets ADD COLUMN owner_id uuid;
COMMIT;
