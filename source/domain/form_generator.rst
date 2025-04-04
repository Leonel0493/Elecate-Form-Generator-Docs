FormGenerator Domain
=====================

This domain handles the dynamic creation of forms and their associated input fields.

DTOs:
-----

These objects represent select options or field inputs retrieved from external sources or pre-defined lists:

- `CustTypeSelectActive`, `MailtypeSelectActive`, `SalesperSelectActive`, etc.

Interfaces:
-----------

- `IHtmlFieldGenerator`: Generates HTML or dynamic UI representations for form fields.
- `IOptionFactory`: Factory pattern for option creation.

Persistence Models:
-------------------

These represent data structures related to form field configuration:

- `Field`
- `InputField`
- `InputType`
- `FormField`
- `SelectItem`

Repositories:
-------------

- `IInputFieldRepository`: Interface to fetch form fields.
- `IOptionSourceRepository`: Interface to fetch available options for select fields.

Responsibilities:
-----------------

- Define structure and behavior of forms and their fields.
- Support dynamic option rendering and input types.
