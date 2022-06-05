-- Deploy: schemas/vybez_permissions_public/procedures/group_member_permissions_get_mask_by_names/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema

BEGIN;

CREATE FUNCTION "vybez_permissions_public".group_member_permissions_get_mask_by_names (names citext[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "vybez_permissions_public".group_member_permissions
    WHERE name = ANY (names);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "vybez_permissions_public".group_member_permissions_get_mask_by_names TO authenticated;
COMMIT;
