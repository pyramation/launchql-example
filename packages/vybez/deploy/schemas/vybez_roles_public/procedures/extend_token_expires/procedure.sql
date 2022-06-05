-- Deploy: schemas/vybez_roles_public/procedures/extend_token_expires/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema

BEGIN;

CREATE FUNCTION "vybez_roles_public".extend_token_expires (
  amount interval default '30 minutes'::interval
)
  RETURNS "vybez_roles_private".api_tokens
  AS $$
DECLARE
  v_token_id uuid = jwt_private.current_token_id();
  v_token "vybez_roles_private".api_tokens;
BEGIN
    IF (v_token_id IS NULL) THEN 
      RETURN NULL;
    END IF;
    SELECT * FROM "vybez_roles_private".api_tokens tkn
    WHERE tkn.id = v_token_id
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
        )
    INTO v_token;
    IF (NOT FOUND) THEN 
      RETURN NULL;
    END IF;
    UPDATE "vybez_roles_private".api_tokens t
    SET 
      access_token_expires_at = access_token_expires_at + amount
      WHERE t.id = v_token.id
    RETURNING * INTO v_token;
    RETURN v_token;
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".extend_token_expires TO authenticated;
COMMIT;
