-- Revert: schemas/vybez_public/tables/user_settings/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".user_settings FROM authenticated;
COMMIT;  

