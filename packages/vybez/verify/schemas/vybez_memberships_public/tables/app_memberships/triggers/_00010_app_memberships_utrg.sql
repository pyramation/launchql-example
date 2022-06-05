-- Verify: schemas/vybez_memberships_public/tables/app_memberships/triggers/_00010_app_memberships_utrg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._00010_app_memberships_utrg');
COMMIT;  

