-- Revert: schemas/vybez_public/tables/connected_accounts/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".connected_accounts FROM authenticated;
COMMIT;  

