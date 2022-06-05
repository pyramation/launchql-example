-- Deploy: schemas/vybez_roles_private/procedures/authenticate_strict/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/access_token/column
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/access_token_expires_at/column

BEGIN;

CREATE FUNCTION "vybez_roles_private".authenticate_strict (token_str text)
    RETURNS SETOF "vybez_roles_private".api_tokens
AS $$
SELECT
    tkn.*
FROM
    "vybez_roles_private".api_tokens AS tkn
WHERE
    tkn.access_token = authenticate_strict.token_str
    AND EXTRACT(EPOCH FROM (tkn.access_token_expires_at-NOW())) > 0
    AND 
    (
        CASE WHEN tkn.uagent IS NULL THEN jwt_public.current_user_agent() IS NULL
        ELSE tkn.uagent = jwt_public.current_user_agent() END
    )
    AND 
    (
        CASE WHEN tkn.origin IS NULL THEN jwt_public.current_origin() IS NULL
        ELSE tkn.origin = jwt_public.current_origin() END
    );
$$
LANGUAGE 'sql' STABLE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_private".authenticate_strict TO anonymous;
GRANT EXECUTE ON FUNCTION "vybez_roles_private".authenticate_strict TO authenticated;
COMMIT;
