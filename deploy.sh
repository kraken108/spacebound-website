kubectl config use-context do-ams3-k8s-1-13-1-do-2-ams3-1547117981465
docker build -t registry.gitlab.com/spacebound-studios/spacebound-website:latest .
docker push registry.gitlab.com/spacebound-studios/spacebound-website:latest
kubectl delete deployment spacebound-website
kubectl apply -f deployment.yml
