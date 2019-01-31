-- Verify flipr:insert_flips on pg

BEGIN;

select has_function_privilege('flipr.insert_flips(text, text)', 'execute'); 

ROLLBACK;
