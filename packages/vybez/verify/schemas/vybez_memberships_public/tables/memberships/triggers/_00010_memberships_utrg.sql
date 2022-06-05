-- Verify: schemas/vybez_memberships_public/tables/memberships/triggers/_00010_memberships_utrg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._00010_memberships_utrg');
COMMIT;  

