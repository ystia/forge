.. _nfs_section:

**********
NFS Server
**********

.. contents::
    :local:
    :depth: 3


NFSServer Component
-------------------

The NFSServer component install and start the nfs server. Any client ip is accepted to connect on this nfs server.

Capabilities
^^^^^^^^^^^^

- **nfs_server**: Allows a client to connect on the nfs server

NFSClient Component
-------------------

The NFSClient component install and start a nfs client

Properties
^^^^^^^^^^

- **directory**: Path to mount

  - Default : /var/nfs

Requirements
^^^^^^^^^^^^

- **nfs_server**: Connects to a NFSServer component
