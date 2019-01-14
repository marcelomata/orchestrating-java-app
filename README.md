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


This project is based on Spring Boot's [HATEOAS example](https://github.com/spring-projects/spring-boot/tree/master/spring-boot-samples/spring-boot-sample-hateoas).


