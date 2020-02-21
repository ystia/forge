# Yorc & Consul Tosca Node Template

This TOSCA type allows to deploy a docker container with Yorc orchestrator and its Consul backend.

The Docker image of Yorc&Consul should be available in dockerhub, or other Docker registry.

The deployment to Kubernetes can be done using Alien4Cloud and Yorc.

## About versions

1. Used Alien version: 2.2.0-SM10 (docker-types:2.2.0-SM10)
2. Deployed Yorc version: last available in jfrog (file: ystia-docker.jfrog.io/ystia/yorc)

## Usage

Check used versions, and if necessary modify them correspondingly to your needs. 
Create a zip file with the types.yaml and upload it to the Alien4Cloud's Catalog.
  
