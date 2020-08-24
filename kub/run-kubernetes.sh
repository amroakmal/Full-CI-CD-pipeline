kubectl apply -f deployment.yml
kubectl apply -f service.yml

kubectl set image deployment proj-deploy nginx=nginx:1.9