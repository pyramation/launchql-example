-- Revert: schemas/vybez_public/tables/user_settings/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".user_settings FROM authenticated;
COMMIT;  

