kubectl apply -f ~/Desktop/proj/kub/deployment.yml
kubectl apply -f ~/Desktop/proj/kub/service.yml

kubectl set image deployment proj-deploy nginx=nginx:1.9