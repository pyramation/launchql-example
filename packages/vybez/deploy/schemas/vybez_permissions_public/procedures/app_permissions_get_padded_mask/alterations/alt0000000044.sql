-- Deploy: schemas/vybez_permissions_public/procedures/app_permissions_get_padded_mask/alterations/alt0000000044 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema

BEGIN;

CREATE OR REPLACE FUNCTION "vybez_permissions_public".app_permissions_get_padded_mask (mask bit varying)
  RETURNS bit varying
AS $CODEZ$
    SELECT utils.bitmask_pad(mask, 32, '0');
$CODEZ$
LANGUAGE sql IMMUTABLE;
GRANT EXECUTE ON FUNCTION "vybez_permissions_public".app_permissions_get_padded_mask TO authenticated;
COMMIT;
