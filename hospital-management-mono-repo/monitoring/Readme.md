docker network create monitoring


docker run -dit  --name=prometheus --network=monitoring -p 9090:9090 -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml   prom/prometheus


docker run -d \
  --name=grafana \
  --network=monitoring \
  -p 3003:3000 \
  grafana/grafana

Grafana : Dashboard link for Springboot
    https://grafana.com/grafana/dashboards/10280-microservices-spring-boot-2-1/



docker run -d --name=grafana --network=monitoring -p 3001:3000 -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/dashboard:/etc/grafana/provisioning/dashboards/dashboard -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/datasources/:/etc/grafana/provisioning/datasources/ grafana/grafana



docker run -d --name=grafana --network=monitoring -p 3001:3000 -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/dashboard.yaml:/etc/grafana/provisioning/dashboards/dashboard.yaml -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/springboot-dashboard.json:/etc/grafana/provisioning/dashboards/springboot-dashboard.json -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/datasources/:/etc/grafana/provisioning/datasources/ grafana/grafana

docker run -d \
  --name=grafana \
  --network=monitoring \
  -p 3001:3000 \
  -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/dashboard/dashboards.yaml:/etc/grafana/provisioning/dashboards/dashboards.yaml \
  -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/dashboard/spring-boot-dashboard.json:/etc/grafana/provisioning/dashboards/spring-boot-dashboard.json \
  -v /Users/vzodge/ALL_GIT_REPO/dev-sec-ops-directory/dev-sec-ops-demos/hospital-management-mono-repo/monitoring/grafana/datasources/:/etc/grafana/provisioning/datasources/ \
  grafana/grafana
