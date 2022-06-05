-- Deploy: schemas/vybez_roles_private/procedures/authenticate/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/access_token/column
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/access_token_expires_at/column

BEGIN;

CREATE FUNCTION "vybez_roles_private".authenticate (token_str text)
    RETURNS SETOF "vybez_roles_private".api_tokens
AS $$
SELECT
    tkn.*
FROM
    "vybez_roles_private".api_tokens AS tkn
WHERE
    tkn.access_token = authenticate.token_str
    AND EXTRACT(EPOCH FROM (tkn.access_token_expires_at-NOW())) > 0;
$$
LANGUAGE 'sql' STABLE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_private".authenticate TO anonymous;
GRANT EXECUTE ON FUNCTION "vybez_roles_private".authenticate TO authenticated;
COMMIT;
