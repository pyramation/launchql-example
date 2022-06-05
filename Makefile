
up:
	docker-compose up -d

down:
	docker-compose down -v

ssh:
	docker exec -it launchql-example-postgres /bin/bash

install:
	docker exec launchql-example-postgres /sql-bin/install.sh

seed:
	createdb vybez
	lql deploy --recursive --database vybez --yes --project vybez-svc-local
  
