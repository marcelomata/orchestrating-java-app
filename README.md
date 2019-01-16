# Example application #

A simple Spring Boot application that suports a REST API and does persistence using JPA.

# 01-Migrating the database to MySQL
To perform the tests, it is required to have docker ce installed in your Linux distribution. Link to [Ubuntu installation](https://docs.docker.com/v17.12/install/linux/docker-ce/ubuntu/#install-docker-ce-1). 

In order to setup the database, go to the docker package and execute the run.sh file, as shown bellow:

```
	# if you are in the root of maven project
	cd docker && ./run.sh
```

After that, then the tests can be performed executing the following command:

```
	cd .. && mvn test
```

# 02-Packaging and deploying the application with minikube
Minikube is being used as a single node Kubernetes cluster, in order to perform orchestration. For this example, coding, testing and delivering phases are being performed on the same machine. Tools like Jenkins can be used for continuous delivery. Ansible is an option to make easier the development of the script on delivery process. It is required to have minikube installed in your Linux distribution. In the current version, only one container will be created. However, when this container is killed, minikube will create another one. Link to [Ubuntu installation](https://kubernetes.io/docs/tasks/tools/install-minikube/#install-minikube). 

In order to deploy everything just execute the deploy.sh file in the kubernetes folder, as shown bellow:

```
	# if you are in the root of maven project
	cd kubernetes && ./run.sh
```

To shutdown everything execute the shutdown.sh file on the same folder.

```
	# if you are in the root of maven project
	cd kubernetes && ./shutdown.sh
```

On this example, no action occurs when the automated tests fail.



This project is based on Spring Boot's [HATEOAS example](https://github.com/spring-projects/spring-boot/tree/master/spring-boot-samples/spring-boot-sample-hateoas).


