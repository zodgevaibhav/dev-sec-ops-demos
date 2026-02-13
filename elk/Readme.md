Changes :
    elk folder :
        docker-compose.yml
        logstash.conf
        filebeat.yml
    Service POM.xml
            logback-spring.xml
    

Steps : 
    docker compose up -d
    docker exec -it filebeat filebeat setup -E 'output.elasticsearch.hosts=["http://elasticsearch:9200"]' -E output.logstash.enabled=false
    docker compose down