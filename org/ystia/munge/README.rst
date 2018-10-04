.. _munge_section:

*****
Munge
*****

.. contents::
    :local:
    :depth: 3

MUNGE (MUNGE Uid 'N' Gid Emporium) is an authentication service for creating and validating credentials.

Munge Component
---------------

Properties
^^^^^^^^^^

- **key**: The encryption key (Base64 encoded). If not provided a new one is automatically generated. But if you want to authenticate
  on different hosts they should share the same key

Requirements
^^^^^^^^^^^^

- **host**: Munge should be hosted on a Compute component.

