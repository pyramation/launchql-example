-- Revert: schemas/vybez_public/tables/users/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( type, display_name, profile_picture ) ON TABLE "vybez_public".users FROM authenticated;
COMMIT;  

