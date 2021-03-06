# k8-demo
Demo for 23rd April 2020, Sample Spring boot application with one rest end point trying to deploy on GKE.

**Kubernetes Commands**

**Login to cluster**

gcloud container clusters get-credentials techprimer-cluster-1 --zone us-central1-a

**List Pods:**

kubectl get pods

**List Deployments:**

kubectl get deployments

**List Services:**

kubectl get services

**Deploy an image:**

kubectl run spring-boot-example --image=gcr.io/$GOOGLE_CLOUD_PROJECT/spring-boot-example:v1 --port=8080

**Expose Load Balancer:**

kubectl expose deployment spring-boot-example --type=LoadBalancer

**Scale deployments:**

kubectl scale deployment spring-boot-example --replicas=3

**K8s YAML Creator:**

Link to Brandon Potter's YML builder - https://static.brandonpotter.com/kubernetes/DeploymentBuilder.html

**Commands to Create/Update:**

kubectl apply -f deployment.yml
kubectl apply -f service.yml

**Docker Commands**

**Build:**

docker build -f Dockerfile -t img_name .
    
**Images:**

docker images

**Run an image:**

docker run -p 8085:8085 img_name

**Pushing to GCR:**

docker tag img_name gcr.io/project_id/img_name
docker push gcr.io/project_id/img_name
