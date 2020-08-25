# Alien4Cloud Tosca Node Template

This TOSCA type allows to deploy an Alien4Cloud docker container.
The Alien4Cloud component requires connection to a Yorc component in order to create and configure a Yorc orchestrator.

The docker image should be available in dockerhub, or other Docker registry.

The deployment to Kubernetes can be done using Alien4Cloud and Yorc.

## About used versions

1. Used Alien version: 3.0.0 (docker-types:3.0.0)
2. Deployed Alien version: 3.0.0 (file: alien4cloud/alien4cloud:3.0.0)

## Usage

Check used versions, and if necessary modify them correspondingly to your needs.
Create a zip file with the types.yaml and upload it to the used Alien4Cloud's Catalog.

