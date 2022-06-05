-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/triggers/app_admin_grants_insert_trg from pg

BEGIN;
DROP TRIGGER app_admin_grants_insert_trg ON "vybez_memberships_public".app_admin_grants;
COMMIT;  

