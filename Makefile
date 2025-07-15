# k8s

kube-env-a:
	@ kubectl kustomize ./k8s/kustomization/.
	@ kubectl apply -k ./k8s/kustomization/.

kube-dep-a:
	@ kubectl apply -f ./k8s/.

kube-a: kube-env-a kube-dep-a

kube-r:
	@ kubectl delete all --all
