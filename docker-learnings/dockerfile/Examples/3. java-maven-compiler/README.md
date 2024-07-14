Scenario :
    1. I dont have jdk and maven installed on my mac
    2. I want to create docker image which have jdk and maven installed
    3. I want to use that docker image to build my hello-service


Assignment:
    1. Create volume named as maven_repo
    2. Build java project using maven-jdk image and map  maven_repo with /root/.m2