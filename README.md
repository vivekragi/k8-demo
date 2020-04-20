# k8-demo
Demo for 23rd April 2020, Sample Spring boot application with one rest end point trying to deploy on GKE.

Kubernetes Commands
List Pods
kubectl get pods

List Deployments
kubectl get deployments

List Services:
kubectl get services

Deploy an image:
kubectl run spring-boot-example --image=gcr.io/$GOOGLE_CLOUD_PROJECT/spring-boot-example:v1 --port=8080

Expose Load Balancer:
kubectl expose deployment spring-boot-example --type=LoadBalancer

Scale deployments:
kubectl scale deployment spring-boot-example --replicas=3

K8s YAML Creator:
Link to Brandon Potter's YML builder - https://static.brandonpotter.com/kubernetes/DeploymentBuilder.html

Commands to Create/Update:
kubectl apply -f deployment.yml
kubectl apply -f service.yml