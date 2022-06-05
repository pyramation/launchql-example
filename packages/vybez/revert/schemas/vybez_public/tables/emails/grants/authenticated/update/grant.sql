-- Revert: schemas/vybez_public/tables/emails/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( email, owner_id, is_primary ) ON TABLE "vybez_public".emails FROM authenticated;
COMMIT;  

