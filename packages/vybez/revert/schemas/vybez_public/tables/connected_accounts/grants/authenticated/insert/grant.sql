-- Revert: schemas/vybez_public/tables/connected_accounts/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( service, identifier, details, owner_id ) ON TABLE "vybez_public".connected_accounts FROM authenticated;
COMMIT;  

