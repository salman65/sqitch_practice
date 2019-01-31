-- Verify flipr:appschema on pg

BEGIN;

select pg_catalog.has_schema_privilege('flipr', 'usage');

ROLLBACK;
