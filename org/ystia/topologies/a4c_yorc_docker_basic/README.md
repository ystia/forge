# Simple Yorc stack application template

Defines an application template that alows to deploy a Yorc stack composed by Yorc&Consul + Alien4Cloud.
The **A4C** used to deploy the application has version 2.2.0

## Prerequisits

An available Kubernetes cluster.
A Namespace context set (otherwise the Yorc stack is deployed on the **default** namespace).
A ConfigMap created using --from-file option equal to the path of a directory that contains the configuration files for the Yorc to be deployed.

## Usage

### Update A4C Catalog

Check used versions in this template and in components types, and if necessary modify them correspondingly to your needs.
Create a zip file with the types.yaml and upload it to the A4C's Catalog.

### Create an application using this template.

### Deploy it to a kubernetes location

### Check workloads and services on K8S

```
$ kubectl get services

alien-aliendeployment-service-786916228   LoadBalancer   10.3.241.199   35.240.85.70   8088:32564/TCP
yorc-yorcdeployment-service--1179116320   NodePort       10.3.255.250   <none>         8800:32018/TCP,8500:30449/TCP

```

### Application configuration

Connect to the deployed Alien Console : http://35.240.85.70:8088.
A Yorc orchestrator should be created with Yorc URL set to http:// yorc-yorcdeployment-service--1179116320:8800, and enabled.
A K8S location should be created and configured with onDemand resources.

The Yorc server should be running and configured with a K8S location.

```
$ kubectl get pods

yorcdeployment--1518504487-545fc74c94-f2pqs    1/1     Running

$ kubectl exec -ti yorcdeployment--1518504487-545fc74c94-f2pqs -- yorc loc list

```

May check Consul K/V base using Port forwarding on consul-ui TargetPort from yorc-yorcdeployment-service--1179116320


## Known Issues

Need to fix **targetPort** values in the exposed  Service Ports (change the generated string value by the port number)
