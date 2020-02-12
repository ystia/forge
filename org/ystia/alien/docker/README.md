# Alien4Cloud Tosca component

This componenent allows to deploy an Alien4Cloud, lets call it **Target Alien (TA)**, using an Alin4Cloud called **Source Alien (SA)**.

The Docker image of the TA should be available in dockerhub, or other Docker registry.
The SA can use the Yorc Orchestrator to deploy the TA to a Container Orchestrator as Kubernetes.

## About used versions

1. docker-types:2.2.0-SM10                 The SA used to deploy the component has version 2.2.0-SM10
2. file: alien4cloud/alien4cloud:2.2.0-SM9 The deployed TA will have version 2.2.0-SM9

## Usage

Check used versions, and if necessary modify them correspondingly to your needs.
Create a zip file with the types.yaml and upload it to the SA's Catalog.
  
