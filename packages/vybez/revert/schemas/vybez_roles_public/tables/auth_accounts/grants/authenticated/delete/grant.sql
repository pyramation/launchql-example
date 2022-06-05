-- Revert: schemas/vybez_roles_public/tables/auth_accounts/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_roles_public".auth_accounts FROM authenticated;
COMMIT;  

