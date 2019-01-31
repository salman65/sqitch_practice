-- Verify flipr:insert_user on pg

BEGIN;

select has_function_privilege('flipr.insert_user(text, text)', 'execute'); 

select 1/count(*)
from pg_catalog.pg_proc
where proname='insert_user' and pg_get_functiondef(oid) like $$%crypt($2, gen_salt('md5'))%$$;

ROLLBACK;
