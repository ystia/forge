.. _yorc_section:

****
Yorc
****

.. contents::
    :local:
    :depth: 3


YorcServer Component
--------------------

The Yorc component is responsible of the installation and configuration of Yorc itself. The ConsulAgent linked to the YorcServer has to be on the same host as the YorcServer.

Properties
^^^^^^^^^^

- **download_url** : Download URL for this component binary. Providing a different value allows to specify an alternative repository (ie: for offline installations).
  It is your responsibility to provide an accessible download url and to store required artifacts on it.

  - Default : https://github.com/ystia/yorc/releases/download/v3.0.0/yorc.tgz

- **install_dir**: Directory where Yorc binary should be installed

  - Default : /usr/local/bin

- **config_dir**: Directory where Yorc configuration files will be stored

  - Default : /etc/yorc

- **data_dir**: Home directory for Yorc

  - Default : /var/yorc

- **private_key_content** : The content of the default ssh private key pair to use to connect on computes. It will be stored as `~/.ssh/yorc.pem`.

Requirements
^^^^^^^^^^^^

- **host**: Yorc should be hosted on a Compute component.

- **ansible**: Yorc needs ansible to be installed on the host (node AnsibleRuntime)

- **terraform**: Yorc needs terraform to be installed on the host (node TerraformRuntime)

- **consul**: Yorc needs a consulServer or a consulAgent

- **work_directory**: Yorc can be connected to a FileSystem (BlockStorage, NFS...) for the `work/` directory.

Capabilities
^^^^^^^^^^^^

- **rest**: Allows to connect to yorc (e.g. from the a4c plugin)

- **config**: Allows to host configuration fragments (e.g. infrastructures)

OpenStackConfig Component
-------------------------

The OpenStackConfig component allows to add OpenStack infrastructure to the configuration of Yorc

Properties
^^^^^^^^^^

- **auth_url** : The authentication url for OpenStack (should be the Keystone endpoint ie: http://your-openstack:5000/v2.0).

- **user_name** : The OpenStack user name to use.

- **password** : The OpenStack password to use.

- **tenant_name** : The OpenStack tenant name to use.

- **private_network_name** : The name of private network to use as primary adminstration network between Yorc and Compute instances. It should be a private network accessible by this instance of Yorc.

- **default_security_groups** : Default security groups to be used when creating a Compute instance.


Requirements
^^^^^^^^^^^^

- **host**: OpenStackConfig should be hosted on a YorcServer component.


KubernetesConfig Component
--------------------------

The OpenStackConfig component allows to add OpenStack infrastructure to the configuration of Yorc

Properties
^^^^^^^^^^

- **master_url** : URL of the HTTP API of Kubernetes is exposed. Format: https://<host>:<port>

- **ca** : Trusted root certificates for server

- **cert** : The TLS client certificate used for authentication

- **key** : The TLS client key used for authentication

- **insecure** : Server should be accessed without verifying the TLS certificate (testing only)


Requirements
^^^^^^^^^^^^

- **host**: OpenStackConfig should be hosted on a YorcServer component.


AWSConfig Component
-------------------

The OpenStackConfig component allows to add OpenStack infrastructure to the configuration of Yorc

Properties
^^^^^^^^^^

- **access_key** : The AWS access key credential.

- **secret_key** : The AWS secret key credential.

- **region** : The AWS region to use.

Requirements
^^^^^^^^^^^^

- **host**: OpenStackConfig should be hosted on a YorcServer component.

