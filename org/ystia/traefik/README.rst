.. _traefik_section:

*******
Træfik
*******

.. contents::
    :local:
    :depth: 3

Træfik is a modern HTTP reverse proxy and load balancer that makes deploying microservices easy. 

Træfik concepts:

Entrypoints:
    Incoming requests end on entrypoints, as the name suggests, they are the network entry points into Træfik (listening port, SSL, traffic redirection...).

Frontends:
    Traffic is then forwarded to a matching frontend. A frontend defines routes from entrypoints to backends. Routes are created using requests fields (Host, Path, Headers...) and can match or not a request.

Backends:
    The frontend will then send the request to a backend. A backend can be composed by one or more servers, and by a load-balancing strategy.

Servers:
    Finally, the server will forward the request to the corresponding microservice in the private network.


Træfik Component
----------------

The Træfik component is responsible of the installation and configuration of Træfik itself.

Properties
^^^^^^^^^^

- **download_url** : Download URL for this component binary. Providing a different value allows to specify an alternative repository (ie: for offline installations).
  It is your responsibility to provide an accessible download url and to store required artifacts on it.

  - Default : https://github.com/containous/traefik/releases/download/v1.6.4/traefik_linux-amd64

- **install_dir**: Directory where Træfik binary should be installed

  - Default : /usr/local/bin

- **config_dir**: Directory where Træfik configuration files will be stored

  - Default : /etc/traefik

- **enable_dashboard**: Specifies if the DashBoard feature of Træfik should be activated

  - Default: true

Requirements
^^^^^^^^^^^^

- **host**: Træfik should be hosted on a Compute component.

Capabilities
^^^^^^^^^^^^

- **entrypoint**: Allows to define an Entrypoint for Træfik

- **cfg_fragment_host**: Allows to host configuration fragments for routing traffic from entrypoints to services

TræfikRoute Component
---------------------

The TræfikRoute component allows to connect to any TOSCA endpoint by defining a route

Properties
^^^^^^^^^^

- **rules** : Allows to define `frontend rules <https://docs.traefik.io/basics/#frontends>` that should match or modify the route.

Requirements
^^^^^^^^^^^^

- **cfg_host**: TræfikRoute should be hosted on a Træfik component.

- **application**: An endpoint to connects and routes the traffic to.

