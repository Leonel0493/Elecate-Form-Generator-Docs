Shared Components
=================

This section documents shared models and services that are used across multiple domains.

Models
------

**Secret**

- Path: `Shared/Models/Secret.cs`
- Description: Represents a catalog table in Postgres.
- Use Cases:
  - Read DbName or DbId.

Repositories
------------

**IDbNameCache**

- Path: `Shared/Repositories/IDbNameCache.cs`
- Description: Interface for caching and resolving database names.
- Purpose:
  - Supports multi-tenant architecture by mapping tenant context to database names.
  - Improves performance by reducing repeated resolution.

Usage
-----

The components in this module are:

- Reused across multiple domains such as `ScriptGenerator`, `FormGenerator`, and `Prospects`.
- Typically injected via Dependency Injection.
- Independent of business rules from any specific bounded context.

Notes
-----

These shared components should remain stable and context-agnostic to avoid tight coupling with any specific domain logic.
