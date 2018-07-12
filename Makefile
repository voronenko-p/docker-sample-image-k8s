deploy:
	kubectl create -f croc-hunter.yaml --save-config
	kubectl create -f croc-hunter-ingress.yaml --save-config

apply:
	kubectl apply -f croc-hunter.yaml
	kubectl apply -f croc-hunter-ingress.yaml

dashboard:
	gnome-open http://localhost:8001/api/v1/namespaces/kube-system/services/http:kubernetes-dashboard:/proxy/#!/overview?namespace=default

hunter:
	gnome-open http://localhost:8001/api/v1/namespaces/default/services/http:croc-hunter:/proxy/
