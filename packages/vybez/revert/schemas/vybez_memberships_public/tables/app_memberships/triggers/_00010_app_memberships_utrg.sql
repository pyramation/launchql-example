-- Revert: schemas/vybez_memberships_public/tables/app_memberships/triggers/_00010_app_memberships_utrg from pg

BEGIN;
DROP TRIGGER _00010_app_memberships_utrg ON "vybez_memberships_public".app_memberships;
COMMIT;  

