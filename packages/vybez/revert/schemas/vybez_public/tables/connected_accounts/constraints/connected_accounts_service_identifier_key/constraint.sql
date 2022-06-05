-- Revert: schemas/vybez_public/tables/connected_accounts/constraints/connected_accounts_service_identifier_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts 
    DROP CONSTRAINT connected_accounts_service_identifier_key;

COMMIT;  

