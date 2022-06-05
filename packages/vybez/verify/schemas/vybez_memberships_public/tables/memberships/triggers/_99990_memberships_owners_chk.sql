-- Verify: schemas/vybez_memberships_public/tables/memberships/triggers/_99990_memberships_owners_chk on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public._99990_memberships_owners_chk');
COMMIT;  

