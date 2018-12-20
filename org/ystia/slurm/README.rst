.. _slurm_section:

*****
Slurm
*****

.. contents::
    :local:
    :depth: 3

Slurm is an open source, fault-tolerant, and highly scalable cluster management and
job scheduling system for large and small Linux clusters.


SlurmController Component
-------------------------

The SlurmController component is responsible of configuring a Slurm Controller which
maintains the cluster state.

Properties
^^^^^^^^^^

- **download_url** : Download URL for this component sources.
  Providing a different value allows to specify an alternative repository (ie: for offline installations).
  It is your responsibility to provide an accessible download url and to store required artifacts on it.

  - Default : https://www.schedmd.com/downloads/latest/slurm-17.02.11.tar.bz2

- **cluster_name**: Allows to specify a Slurm Cluster name.

  - Default : cluster

Attributes
^^^^^^^^^^

- **hostname**: the actual hostname that is used to identify this node within the cluster.

Requirements
^^^^^^^^^^^^

- **host**: SlurmController should be hosted on a Compute component.

Capabilities
^^^^^^^^^^^^

- **slurmctl_endpoint**: Defines a Controller endpoint that nodes could use to connects to.
  This allows to select the port that the Controller will use.


SlurmDaemon Component
-------------------------

The SlurmDaemon component is responsible of configuring a Slurm node. This node should bind
to a SlurmController in order to be actively part of a cluster.
A SlurmDaemon is responsible of actually execute operations scheduled by the Controller.

Properties
^^^^^^^^^^

- **download_url** : Download URL for this component sources.
  Providing a different value allows to specify an alternative repository (ie: for offline installations).
  It is your responsibility to provide an accessible download url and to store required artifacts on it.

  - Default : https://www.schedmd.com/downloads/latest/slurm-17.02.11.tar.bz2


Attributes
^^^^^^^^^^

- **hostname**: the actual hostname that is used to identify this node within the cluster.

- **sockets**: Number of CPUs on the host

- **cores_per_socket**: Number of cores per CPU

- **threads_per_core**: Number of threads per core

- **real_memory**: Actual number of memory on the host

Requirements
^^^^^^^^^^^^

- **host**: SlurmDaemon should be hosted on a Compute component.

- **slurmctl**: The Slurm Controller to connect to.


Capabilities
^^^^^^^^^^^^

- **slurmd_endpoint**: Defines a Slurm Daemon endpoint.
  This allows to select the port that the Daemon will use.
