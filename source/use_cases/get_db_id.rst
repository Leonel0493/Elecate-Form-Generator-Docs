Use Case: Get DB ID by Identifier
=================================

**Domain:** ScriptGenerator  
**Category:** Query  
**Class:** `GetDbIdQuery.cs`

Description:
------------

Retrieves the internal database ID for a given identifier (e.g., DbName).

Inputs:
-------

- External or business identifier.

Outputs:
--------

- Internal database GUID or integer ID.

Business Rules:
---------------

- Cache lookup via `IDbNameCache`.
- Fallback to direct resolution if not cached.
