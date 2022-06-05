-- Revert: schemas/vybez_public/tables/connected_accounts/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".connected_accounts FROM authenticated;
COMMIT;  

