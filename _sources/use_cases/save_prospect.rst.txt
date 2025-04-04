Use Case: Save Prospect
=======================

**Domain:** Prospects  
**Category:** Command  
**Class:** `SaveProspectCommand.cs`

Description:
------------

Registers or updates a prospect in the system.

Inputs:
-------

- Prospect details (name, contact info, status, etc.)

Outputs:
--------

- A stored prospect entry.

Business Rules:
---------------

- Validation of mandatory fields.
- Prevents duplicate prospect entries.

Exceptions:
-----------

- `ValidationException` if fields are missing or invalid.
