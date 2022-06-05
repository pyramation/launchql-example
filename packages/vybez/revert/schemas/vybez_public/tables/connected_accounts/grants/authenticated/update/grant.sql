-- Revert: schemas/vybez_public/tables/connected_accounts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( service, identifier, details, owner_id ) ON TABLE "vybez_public".connected_accounts FROM authenticated;
COMMIT;  

