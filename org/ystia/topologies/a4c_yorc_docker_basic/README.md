# Simple Yorc stack application template

Defines an application template that alows to deploy a Yorc stack composed by Yorc&Consul + Alien4Cloud.
The **A4C** used to deploy the application has version 2.2.0-SM10

## Prerequisits

An available Kubernetes cluster.
A Namespace context set (otherwise the Yorc stack is deployed on the **default** namespace).
A ConfigMap created using --from-file option equal to the path of a directory that contains the configuration files for the Yorc to be deployed.

## Usage

### Update A4C Catalog

Check used versions in this template and in components types, and if necessary modify them correspondingly to your needs. 
Create a zip file with the types.yaml and upload it to the A4C's Catalog.

### Create an application using this template.

### Deploy it to a K8S location configured within a Yorc orchestrator (YO).
See below for K8S location configuration

### Check workloads and services on K8S

```
$ kubectl get services

alien-aliendeployment-service-786916228   LoadBalancer   10.3.241.199   35.240.85.70   8088:32564/TCP
yorc-yorcdeployment-service--1179116320   NodePort       10.3.255.250   <none>         8800:32018/TCP,8500:30449/TCP

```

### Configure deployed components

Currently a manual configuration is necessary at this step.

Some informations are necessary to be get from K8S. 

In order to connect to the deployed Alien4Cloud's GUI:
* alien-aliendeployment-service name; here alien-aliendeployment-service-786916228
* alien-aliendeployment-service Load balancer IP ; here 35.240.85.70
* alien-aliendeployment-service alien-console port; here 8088
The Alien4Cloud's GUI can be reached with http://<lb-ip>:<alien-console-ip>; here  http://35.240.85.70:8088

In order to connect the Alien4Cloud to the deployed Yorc orchestrator:
* yorc-yorcdeployment-service name; here yorc-yorcdeployment-service--1179116320
* yorc-yorcdeployment-service ClusterIP (NodePort Cluster IP); here 10.3.255.250
* yorc-yorcdeployment-service yorc-server port; here 8800
The Yorc orchestrator's URL will be http://<cluster-ip>:<yorc-server-port> ; here http://10.3.255.250:8800

Now follow the next steps:

1. Connect to the deployed Alien Console : http://35.240.85.70:8088
2. Create a Yorc orchestrator (Yorch) with Yorc URL http://10.3.255.250:8800
3. Create and configure locations for Yorch. For example, create a K8S location (See below for K8S location configuration)

```
$ kubectl get pods

yorcdeployment--1518504487-545fc74c94-f2pqs    1/1     Running

$ kubectl exec -ti yorcdeployment--1518504487-545fc74c94-f2pqs -- yorc loc list
$ kubectl exec -ti yorcdeployment--1518504487-545fc74c94-f2pqs -- yorc loc add --data '{"name": "locationk8S","type": "kubernetes","properties": {}}'

```

May check Consul K/V base using Port forwarding on consul-ui TargetPort from yorc-yorcdeployment-service--1179116320


## A4C Administration config

### Create usefull Meta-properties

- K8S_NAMESPACE
- YORC_LOCATION 

### K8S location configuration

#### On demand resources

- org.alien4cloud.kubernetes.api.types.Deployment
- org.alien4cloud.kubernetes.api.types.Container
- org.alien4cloud.kubernetes.api.types.volume.ConfigMapSource -set spec.name to the ConfigMap created for Yorc config files
- NodePort org.alien4cloud.kubernetes.api.types.Service - to be matched by Alien_AlienDeployment_Service
- LoadBalancer org.alien4cloud.kubernetes.api.types.Service - to be matched by Yorc_YorcDeployment

#### Meta-properties

- K8S_NAMESPACE = namespace name to be used
- YORC_LOCATION = the K8S location name configured in the YO

## Known Issues

Need to fix **targetPort** values in the exposed  Service Ports (change the generated string value by the port number)
