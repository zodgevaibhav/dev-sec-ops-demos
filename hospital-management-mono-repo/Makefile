.PHONY: all

# List of directories to process
DIRS = api-gateway patient-service directory-service case-service appointment-service

# Default target
build_all:
	@for dir in $(DIRS); do \
		echo "Building $$dir..."; \
		cd $$dir && mvn clean install docker:build -Dmaven.test.skip=true && cd ..; \
	done

run_all:
	@for dir in $(DIRS); do \
		echo "Running $$dir..."; \
		docker run -dit --rm dnyanyog.org/$$dir:latest; \
	done

sonar_scan:
	@for dir in $(DIRS); do \
		echo "************************************* Scanning $$dir..."; \
		cd $$dir && mvn clean verify sonar:sonar -Dsonar.projectKey=$$dir -Dsonar.host.url=http://localhost:9000 -Dsonar.login=sqa_f7491634b54501f7b2ccbc97e1cb7e9b84e73dd9 -Dmaven.test.skip=true && cd ..; \
	done

license_scan:
	@for dir in $(DIRS); do \
		echo "************************************* Scanning $$dir..."; \
		cd $$dir && docker run -it --rm -v "$$(pwd)":/scan dnyanyog.org/license_finder:latest && cd ..; \
	done

trivy_image_scan:
	@for dir in $(DIRS); do \
		echo "************************************* Scanning $$dir..."; \
		docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v trivy-cache:/root/.cache/ aquasec/trivy image dnyanyog.org/$$dir:latest --skip-db-update -q|grep Total -B2; \
		echo "\n"; \
	done

grype_image_scan:
	@for dir in $(DIRS); do \
		echo "************************************* Scanning $$dir..."; \
		docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v grype-cache:/root/.cache/grype --name Grype -e GRYPE_DB_CACHE_DIR=/root/.cache/grype anchore/grype dnyanyog.org/$$dir:latest ; \
		echo "\n"; \
	done

trivy_dockerfile_scan:
	@for dir in $(DIRS); do \
		echo "************************************* Scanning $$dir..."; \
		cd $$dir; docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v trivy-cache:/root/.cache/ -v "$$(pwd)":/scan/ aquasec/trivy fs /scan --skip-db-update -q|grep Total -B2 ;cd ..; \
		echo "\n"; \
	done