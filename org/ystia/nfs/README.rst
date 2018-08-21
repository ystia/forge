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

The NFSClient component install and start a nfs client. It is a derived of `alien.nodes.LinuxFileSystem`

Properties
^^^^^^^^^^

- **location**: Path to mount

  - Default : /var/nfs

Requirements
^^^^^^^^^^^^

- **partition**: Connects to a NFSServer component
