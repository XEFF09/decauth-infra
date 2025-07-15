# k8s

kube-env-a:
	@ kubectl kustomize ./k8s/kustomization/.
	@ kubectl apply -k ./k8s/kustomization/.

kube-dep-a:
	@ kubectl apply -f ./k8s/.

kube-vol-d:
	@ kubectl delete pvc -l owner-namespace=decauth-volumes
	@ kubectl delete pv -l owner-namespace=decauth-volumes

up: kube-env-a kube-dep-a

down:
	@ kubectl delete all --all

down-v: down kube-vol-d
