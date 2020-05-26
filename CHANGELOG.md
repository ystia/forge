# Ystia Forge Changelog

## UNRELEASED

### ENHANCEMENTS

* Add docker container property to set the shared memory size ([GH-129](https://github.com/ystia/forge/issues/129))

### BUG FIXES

* Installation of Consul and Ansible fails on recent Centos for GCP images ([GH-131](https://github.com/ystia/forge/issues/131))

## 2.2.0 (April 17, 2020)

### NEW COMPONENTS

* Failure starting a docker container in attached mode ([GH-119](https://github.com/ystia/forge/issues/119))
* Refactor HAProxy component to take advantage of tosca.nodes.LoadBalancer component ([GH-116](https://github.com/ystia/forge/issues/116))
* SSL Root CA installer component ([GH-103](https://github.com/ystia/forge/issues/103))
* SSL Certificates Generator component ([GH-78](https://github.com/ystia/forge/issues/78))
* Deploy Docker containers in pure TOSCA ([GH-76](https://github.com/ystia/forge/issues/76))
* Docker Registry ([GH-80](https://github.com/ystia/forge/issues/80))
* Expose Hybrid demo material ([GH-93](https://github.com/ystia/forge/issues/93))
* Component for the Yorc plugin provided by Alien4cloud (the Yorc Provider) ([GH-101](https://github.com/ystia/forge/issues/101))
* Docker container component for Alien4Cloud deployment ([GH-111](https://github.com/ystia/forge/issues/111))
* Docker container component for Yorc&Consul deployment ([GH-111](https://github.com/ystia/forge/issues/111))

### NEW TOPOLOGY TEMPLATES

* Template allowing to deploy a simple Yorc+Alien4Cloud stack based on Docker components ([GH-111](https://github.com/ystia/forge/issues/111))

### ENHANCEMENTS

* Add docker container properties workdir and user ([GH-124](https://github.com/ystia/forge/issues/124))
* Update to Kubernetes v1.17 ([GH-117](https://github.com/ystia/forge/issues/117))
* Update Traefik to v2.1 ([GH-115](https://github.com/ystia/forge/issues/115))
* Should support OpenStack Identity API v3 properties ([GH-109](https://github.com/ystia/forge/issues/109))
* Support of locations ([GH-106](https://github.com/ystia/forge/issues/106))
* Update forge components installing/configuring Yorc to support python3 ([GH-85](https://github.com/ystia/forge/issues/85))
* Update Ansible version to 2.7.9 ([GH-83](https://github.com/ystia/forge/issues/83))
* Add a vault in secured full stack topology ([GH-67](https://github.com/ystia/forge/issues/67))
* Provide forge components/topology allowing to install a secured Yorc setup ([GH-37](https://github.com/ystia/forge/issues/37))
* Allow to configure resources prefix for bootstrapped Yorc ([GH-399](https://github.com/ystia/yorc/issues/399))
* Allow to configure Alien4Cloud docker conatainer when deployed within a Yorc stack ([GH-121](https://github.com/ystia/forge/issues/121))

### DEPENDENCIES

* Ystia Forge components require now Alien4Cloud 2.2.0 ([GH-95](https://github.com/ystia/forge/issues/GH-95))
* Ystia Forge components require now Alien4Cloud CSAR public library 2.2.0
* Ystia Forge components require now yorc-types 1.1.0 (GH-82](https://github.com/ystia/forge/pull/82))

### BUG FIXES

* Bad cleanup for components used in yorc bootstrap ([GH-91](https://github.com/ystia/forge/issues/91))
* Empty playbook configure_hostspool_secrets.yml causes error ([GH-88](https://github.com/ystia/forge/issues/88))
* Install a newer version of Anaconda (Python Component) in order to fix dependencies issues ([GH-69](https://github.com/ystia/forge/issues/69))
* Several wrong version referenced for csar-public-lib components ([GH-58](https://github.com/ystia/forge/issues/58))
* Jupyter depends on EPEL repository but do not ensure that it is installed ([GH-70](https://github.com/ystia/forge/issues/70))
* Kubernetes installation fails ([GH-97](https://github.com/ystia/forge/issues/97))
* Fix Kubernetes install if no proxy env vars are defined ([GH-99](https://github.com/ystia/forge/issues/99))
* Bootstrap on OpenStack doesn't allow floating IP provisioning ([GH-516](https://github.com/ystia/yorc/issues/516))
* Yorc Bootstrap doesn't uninstall yorc binary ([GH-605](https://github.com/ystia/yorc/issues/605))

## 2.1.0 (December 20, 2018)

### BUG FIXES

* Kafka download URLs no more valid ([GH-41](https://github.com/ystia/forge/issues/41))
* Types definition issues detected when uploading forge github repository in Alien4Cloud ([GH-42](https://github.com/ystia/forge/issues/42))
* Forge components installing dnsmaq fail on RHEL 7.5  ([GH-44](https://github.com/ystia/forge/issues/44))

### DEPENDENCIES

* Ystia Forge components require now Alien4Cloud 2.1.0
* Ystia Forge components require now Alien4Cloud CSAR public library 2.1.0

## 2.1.0-RC1 (December 17, 2018)

### DEPENDENCIES

* Ystia Forge components require now Alien4Cloud 2.1.0-RC1
* Ystia Forge components require now Alien4Cloud CSAR public library 2.1.0-RC1

### BUG FIXES

* Component NFS Client fails to mount directory exported by NFS server on GCP ([GH-38](https://github.com/ystia/forge/issues/38))

## 2.1.0-M7 (December 07, 2018)

### NEW FEATURES

* Provide Consul components/topology allowing to install a secured Consul setup ([GH-28](https://github.com/ystia/forge/issues/28))
* Support of Yorc bootstrap ([GH-32](https://github.com/ystia/forge/issues/32))

### IMPROVEMENTS

* TerraformRuntime component should have a download URL in argument ([GH-22](https://github.com/ystia/forge/issues/22))

## 2.1.0-M6 (November 16, 2018)

### DEPENDENCIES

* Ystia Forge components require now Alien4Cloud 2.1.0-SM7
* Ystia Forge components require now Alien4Cloud CSAR public library 2.1.0-SM7

### BUG FIXES

* Yorc AnsibleRuntime component creation fails on CentOS 7 on AWS ([GH-30](https://github.com/ystia/forge/issues/30))


## 2.1.0-M5 (October 26, 2018)

### NEW COMPONENTS

* Google Compute Engine Infrastructure configuration ([GH-23](https://github.com/ystia/forge/issues/23))

## 2.1.0-M4 (October 08, 2018)

### DEPENDENCIES

* Ystia Forge components require now Alien4Cloud 2.1.0-SM6
* Ystia Forge components require now Alien4Cloud CSAR public library 2.1.0-SM6

### NEW COMPONENTS

* Slurm scheduler and its dependencies ([GH-20](https://github.com/ystia/forge/issues/20)):
  * NTP
  * Dnsmasq
  * Resolvconf
  * Munge

### IMPROVEMENTS

* Ystia Forge Consul components at org/ystia/experimental/consul/ install now Consul 1.2.3
