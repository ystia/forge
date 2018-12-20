.. _yorc_a4c_plugin_section:

***********************
Yorc Alien4Cloud Plugin
***********************

.. contents::
    :local:
    :depth: 3


YorcPlugin Component
--------------------

The YorcPlugin component is responsible of the installatino of the Yorc-A4C-plugin and the creation of an orchestrator in alien.


Pre-requisites
^^^^^^^^^^^^^^

In order to import thoses types, you needs some alien4cloud types available in the csar-public-library (order is important):

- org/alien4cloud/consul
- org/alien4cloud/java
- org/alien4cloud/elasticsearch
- org/alien4cloud/cloudify/manager/pub
- org/alien4cloud/cloudify/hostpool/pub
- org/alien4cloud/alien4cloud/pub
- org/alien4cloud/alien4cloud/config

You could create a git import. Current needed version is v2.0.0

Properties
^^^^^^^^^^

- **download_url** : Download URL for this component binary. Providing a different value allows to specify an alternative repository (ie: for offline installations).
  It is your responsibility to provide an accessible download url and to store required artifacts on it.

  - Default : https://github.com/ystia/yorc/releases/download/v3.0.0/yorc.tgz

- **name**: Name of the orchestrator in alien4cloud

  - Default : yorc

- **discriminator**: A discriminator to identity your alien4cloud account on the YorcServer

  - Default : YourInitials

- **pluginId**: Plugin ID. Should be alien4cloud-yorc-plugin

  - Default : alien4cloud-yorc-plugin

- **pluginBean**: PluginBean. Should be yorc-orchestrator-factory

  - Default : yorc-orchestrator-factory

- **yorc_address_ha**: If yorc is deployed in HA mode, you should set this property with the configured domain name in consul. (default in HA mode is yorc.service.consul)

Requirements
^^^^^^^^^^^^

- **yorc**: The YorcServer instance to connect to

