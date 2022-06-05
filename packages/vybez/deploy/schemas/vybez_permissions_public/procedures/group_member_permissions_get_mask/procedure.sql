-- Deploy: schemas/vybez_permissions_public/procedures/group_member_permissions_get_mask/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema

BEGIN;

CREATE FUNCTION "vybez_permissions_public".group_member_permissions_get_mask (ids uuid[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "vybez_permissions_public".group_member_permissions
    WHERE id = ANY (ids);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "vybez_permissions_public".group_member_permissions_get_mask TO authenticated;
COMMIT;
