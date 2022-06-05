-- Revert: schemas/vybez_public/tables/user_settings/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_public".user_settings FROM authenticated;
COMMIT;  

