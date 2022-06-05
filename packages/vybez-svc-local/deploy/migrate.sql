-- Deploy vybez-svc-local:migrate to pg

BEGIN;

UPDATE meta_public.domains 
  SET domain = 'localhost'
WHERE domain = 'vybez.com';

COMMIT;
