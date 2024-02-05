#.PHONY: minikube-context create-resources clean-resources

# Set the Minikube context in Kubernetes
minikube-context:
	@echo "Setting Minikube context in kubernetes"
	kubectl config use-context minikube


# Set up databases using Docker
setup-database-docker:
	@echo "Setting up databases using Docker"
	docker image build -t my-postgres-14 database/.
	sleep 5
	docker run -d --name my-postgres-14 my-postgres-14

stop-database-docker:
	@echo "Stopping databases server"
	docker rm -f my-postgres-14

#	sleep 10  # Wait for PostgreSQL to start
#	docker exec -i mypostgres psql -U myuser -d mydatabase < init.sql


setup: minikube-context setup-database-docker
	@echo "Creating resource in Kubernetes"
	#kubectl apply -f database/init.sql

teardown: minikube-context stop-database-docker
	@echo "Cleaning resource in Kubernetes"


# Create resources in Kubernetes
#create-resources: minikube-context
#    @echo "Creating resources in Kubernetes"
#    kubectl apply -f your-resource-file1.yaml
#    kubectl apply -f your-resource-file2.yaml
#    # Add more resource files as needed
#
## Clean up resources in Kubernetes
#clean-resources: minikube-context
#    @echo "Deleting resources in Kubernetes"
#    kubectl delete -f your-resource-file1.yaml
#    kubectl delete -f your-resource-file2.yaml
#    # Add more resource files as needed

# PHONY targets to avoid conflicts with file names
