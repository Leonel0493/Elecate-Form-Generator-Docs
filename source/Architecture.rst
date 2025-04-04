Architecture
============

The system is designed following Domain-Driven Design (DDD), Command Query Responsibility Segregation (CQRS), and Clean Architecture. This structure ensures modularity, scalability, and separation of concerns.

Layered Structure
-----------------

The application is divided into three main layers:

1. **Domain Layer**
   - Contains the core business logic.
   - Includes **Entities**, **Models**, **Interfaces**, and **Repositories**.
   - Independent of any infrastructure or external dependencies.

2. **Application Layer**
   - Coordinates tasks and defines use cases.
   - Implements **Commands**, **Queries**, **Command Handlers**, and **Query Handlers**.
   - Contains factories definitions and factories implementations.
   - Uses interfaces to communicate with the infrastructure layer.
   - Contains all bussiness logic.

3. **Infrastructure Layer**
   - Implements interfaces defined in the domain or application layer.
   - Contains technical details like:
     - Database access (EF Core)
     - Event publishing
     - Contains all packages that support the system

4. **Presentation Layer** (optional)
   - Using **Web API** project.
   - Acts as an entry point to the application.

CQRS (Command Query Responsibility Segregation)
-----------------------------------------------

CQRS is applied throughout the application:

- **Commands**: Represent write operations (e.g., SaveProspect).
- **Queries**: Represent read operations (e.g., GetInputFields, Stored Procedures).
- Commands and Queries are handled by dedicated handlers, allowing independent scaling and testing.

Clean Architecture 
-------------------------------------------

The system uses ports (interfaces) to define communication boundaries between the domain/application and external systems. Adapters (infrastructure implementations) fulfill those contracts.

Examples:
- A `ScriptRepository` interface in the domain layer is implemented by `ScriptRepositoryEF` in the infrastructure layer.
- A `NotificationService` interface is injected into the application layer and implemented using Twilio in the infrastructure.

Benefits
--------

- **Testability**: Business logic can be tested in isolation.
- **Flexibility**: Infrastructure can be replaced without affecting domain logic.
- **Maintainability**: Clear separation of responsibilities reduces coupling.
- **Scalability**: Domains and use cases can evolve independently.

