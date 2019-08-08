.. _a4c_yorc_provider_section:

*************************
Alien4Cloud Yorc Provider
*************************

.. contents::
    :local:
    :depth: 3


YorcProvider Component
--------------------

The YorcProvider component is responsible for the installation of the alien4cloud-yorc-provider plugin and the creation of an orchestrator in alien.


Pre-requisites
^^^^^^^^^^^^^^

In order to import those types, you needs some alien4cloud types available in the csar-public-library (order is important):

- org/alien4cloud/consul/pub
- org/alien4cloud/java
- org/alien4cloud/elasticsearch/pub
- org/alien4cloud/alien4cloud/pub
- org/alien4cloud/alien4cloud/config

You could create a git import. Current needed version is v2.0.0

Properties
^^^^^^^^^^

- **download_url** : Download URL for this component binary. If no value provided, official plugin coming with alien4cloud distribution is used.
  Providing a different value allows to specify an alternative repository.
  It is your responsibility to provide an accessible download url and to store required artifacts on it.

- **name**: Name of the orchestrator in alien4cloud

  - Default : yorc

- **discriminator**: A discriminator to identity your alien4cloud account on the YorcServer

  - Default : YourInitials

- **pluginId**: Plugin ID. Should be alien4cloud-yorc-provider

  - Default : alien4cloud-yorc-provider

- **pluginBean**: PluginBean. Should be yorc-orchestrator-factory

  - Default : yorc-orchestrator-factory

- **yorc_address_ha**: If yorc is deployed in HA mode, you should set this property with the configured domain name in consul. (default in HA mode is yorc.service.consul)

Requirements
^^^^^^^^^^^^

- **yorc**: The YorcServer instance to connect to

