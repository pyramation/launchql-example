-- Revert: schemas/vybez_public/tables/users/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".users FROM authenticated;
COMMIT;  

