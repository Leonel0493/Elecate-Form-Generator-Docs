Introduction
============

This documentation provides an overview of the Elecate Form Generator's purpose, structure, and domain logic.

Overview
--------

This project is built using **.NET 8** and follows the principles of **Domain-Driven Desing (DDD)** and **Command Query Resposilibity Segregation (CQRS)**. It is structured around clearly defined domains and focuses on maintainability, scalability, and testability.

The system is composed of three primary domains:

- **Script Generator**: Responsible for generating JS script that client embed in their web site.
- **Form Generator**: Handles dymanic form creation and validation process.
- **Prospects**: Save the information that the potential client fill in the embed form.

Key Architectural Characteristics
---------------------------------

- **Separation of Concerns**: The architecture separates application, domain, and infrastructure layers.
- **CQRS**: Commands are used to perform write operations, while Queries are used for read-only data access.
- **DDD**: Each domain models its own logic using Entities, Value Objects, Aggregates, and Domain Events.
- **Scalability**: Each domain can evolve independently and scale with minimal impact on others.

Goals
-----

- Provide a clear and extensible structure for handling complex business rules.
- Enable easy onboarding for new developers.
- Support robust testing and deployment strategies.