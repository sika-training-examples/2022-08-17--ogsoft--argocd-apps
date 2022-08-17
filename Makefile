setup-prod:
	kubectl apply -f meta/prod/

setup-dev:
	kubectl apply -f meta/dev/

install-argocd-dev:
	helm upgrade --install \
		argocd argo-cd \
		--repo https://argoproj.github.io/argo-helm \
		--create-namespace \
		--namespace argocd \
		--wait \
		--values ./argocd-values/dev.values.yml
