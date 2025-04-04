Infrastructure
==============

This layer provides technical implementations of interfaces defined in the Domain and Application layers. It handles data persistence, external service integration, configuration, and context resolution.

Data Persistence
----------------

The project uses two database systems:

- **PostgreSQL** for handling shared configuration data like secrets.
- **SQL Server** for domain-specific business data such as prospects and forms.

**PostgreSQL**

Path: `Persistence/Postgres/`

- `PgDbContext.cs`: Main EF Core DbContext for PostgreSQL.
- `SecretConfiguration.cs`: Entity configuration for the `Secret` model.

**SQL Server**

Path: `Persistence/SqlServer/`

- `SqlServerDbContext.cs`: Main EF Core DbContext for SQL Server.
- Configurations:
  - `FieldConfiguration.cs`
  - `InputFieldConfiguration.cs`
  - `InputTypeConfiguration.cs`
  - `ProspectConfiguration.cs`

Repositories
------------

These classes implement the repository interfaces defined in the Domain layer.

**FormGenerator**

- `FormGeneratorRepository.cs`
- `InputFieldRepository.cs`
- `OptionSourceRepository.cs`

**Prospects**

- `ProspectRepository.cs`

**ScriptGenerator**

- `ScriptGenerator.cs`

**Shared**

- `RestClienteRepository.cs`

Multi-Tenant Context Resolution
-------------------------------

To support multi-tenancy, the system dynamically resolves the correct database context based on tenant identity.

Path: `Shared/Repositories/`

- `IDynamicDbContextProvider.cs`: Interface for database context resolution.
- `DynamicDbContextProvider.cs`: Concrete implementation.
- `SqlServerContextGenerator.cs`: Generates DbContext SQL Server contexts.
- `DbCacheSingleton.cs`: Caches mappings between tenant identifiers and database names.

External Integrations
---------------------

- `RestClienteRepository.cs`: Provides access to external client services via REST.

Responsibilities Summary
------------------------

- Implements domain and application interfaces.
- Separates concerns by database type and context.
- Abstracts DB configuration using EF Core Fluent API.
- Supports multi-tenant data access strategies.
- Integrates with external services as needed.
