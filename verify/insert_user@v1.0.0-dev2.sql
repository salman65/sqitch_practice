-- Verify flipr:insert_user on pg

BEGIN;

select has_function_privilege('flipr.insert_user(text, text)', 'execute'); 

ROLLBACK;
