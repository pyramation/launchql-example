-- Verify: schemas/vybez_memberships_public/tables/memberships/triggers/_00010_memberships_itrg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._00010_memberships_itrg');
COMMIT;  

