# Yorc & Consul Tosca component

This componenent allows to deploy a Yorc Server with its embedded Consul using Alien4Cloud (A4C).

The Docker image of Yorc&Consul should be available in dockerhub, or other Docker registry.
A4C can use the Yorc Orchestrator to deploy the Yorc&Consul to a Container Orchestrator such as Kubernetes.

## About versions

1. docker-types:2.2.0-SM10     The A4C used for deployment has version 2.2.0-SM10
2. file: ystia/yorc            The deployed Yorc's version will be the last available in the docker registry

## Usage

Check used versions, and if necessary modify them correspondingly to your needs. 
Create a zip file with the types.yaml and upload it to the A4C's Catalog.
  
