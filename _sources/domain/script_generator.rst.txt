ScriptGenerator Domain
=======================

This domain is responsible for generating scripts based on specific business rules or inputs.

Interfaces:
-----------

- `IScriptGenerator`: Defines the contract for script generation.

Responsibilities:
-----------------

- Encapsulates script generation contracts.
- Exposes the generation process through a defined interface.

Notes:
------

- The implementation of the bussiness logic are located in the Application and Infrastructure layers.
- This domain does not yet define any Entities or Value Objects but may rely on service orchestration or external inputs.
