-- Verify flipr:change_pass on pg

BEGIN;

select has_function_privilege('flipr.change_pass(text, text, text)', 'execute'); 

ROLLBACK;
