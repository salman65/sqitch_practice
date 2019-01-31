-- Verify flipr:delete_flips on pg

BEGIN;

select has_function_privilege('flipr.delete_flips(bigint)', 'execute'); 

ROLLBACK;
