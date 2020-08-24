kubectl create -f deployment.yml
kubectl create -f service.yml

kubectl set image deployment proj-deploy nginx=nginx:1.9