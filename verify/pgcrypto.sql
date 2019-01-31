-- Verify flipr:pgcrypto on pg

BEGIN;

select 1/count(*) from pg_extension where extname='pgcrypto';
select has_function_privilege('crypt(text, text)', 'execute'); 
select has_function_privilege('gen_salt(text)', 'execute'); 

ROLLBACK;
