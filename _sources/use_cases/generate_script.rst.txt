Use Case: Generate Script
=========================

**Domain:** ScriptGenerator  
**Category:** Service  
**Class:** `JsScriptGenerator.cs`

Description:
------------

Generates a JavaScript script whose function is to be embedded in the client's web page, it contains a connection to a JS library that returns the created form.

Inputs:
-------

- DbId
- TargetDiv
- LoadCss

Outputs:
--------

- HTML script that contains a form.

Business Rules:
---------------

- The generated script must follow syntax and structure templates.
