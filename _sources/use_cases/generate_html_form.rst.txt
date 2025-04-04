Use Case: Generate HTML Form
============================

**Domain:** FormGenerator  
**Category:** Query / Service  
**Class:** `FormGeneratorQuery.cs`, `HtmlGeneratorService.cs`

Description:
------------

Generates a dynamic HTML form based on field configuration and select option values.

Inputs:
-------

- Form structure definitions from `Field`, `InputField`, and `InputType`
- Option sources like `MailTypeOptions`, `SalesperOptions`, etc.

Outputs:
--------

- A complete HTML representation of a form ready for frontend rendering.

Business Rules:
---------------

- Each input type must be mapped to a proper HTML field (text, select, textarea, etc.)
- Options must be fetched from stored procedures.

Related Components:
-------------------

- `HtmlFieldGeneratorFactory`: Factory to select correct field generator.
- `OptionFactory`: Factory to resolve options for select fields.
