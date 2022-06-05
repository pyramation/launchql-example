-- Verify: schemas/vybez_memberships_public/tables/group_memberships/triggers/_00010_group_memberships_utrg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._00010_group_memberships_utrg');
COMMIT;  

