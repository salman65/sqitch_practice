-- Verify flipr:change_pass on pg

BEGIN;

select has_function_privilege('flipr.change_pass(text, text, text)', 'execute'); 

select 1/count(*)
from pg_catalog.pg_proc
where proname='change_pass' and pg_get_functiondef(oid) like $$%crypt($3, gen_salt('md5'))%$$;

ROLLBACK;
