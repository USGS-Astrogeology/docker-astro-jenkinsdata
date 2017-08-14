# docker image: jenkinsdata

A volume container for persistent data for docker-astro-jenkins container.

Needs to be run one-time with:

```
docker run --name jenkins-data usgsastro/jenkinsdata
```

Then can be mounted on the jenkins container with

```
 docker run -p 8080:8080 -p 50000:50000 --name=jenkins --volumes-from=jenkins-data -d usgsastro/jenkins
```
