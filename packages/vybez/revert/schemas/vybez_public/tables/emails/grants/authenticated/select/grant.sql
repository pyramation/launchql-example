-- Revert: schemas/vybez_public/tables/emails/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".emails FROM authenticated;
COMMIT;  

