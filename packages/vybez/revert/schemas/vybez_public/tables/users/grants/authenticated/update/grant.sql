-- Revert: schemas/vybez_public/tables/users/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( display_name, profile_picture ) ON TABLE "vybez_public".users FROM authenticated;
COMMIT;  

