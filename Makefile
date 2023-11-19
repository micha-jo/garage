include .env

startall: 
	@echo ENV = ${ENV}
	@docker-compose --env-file ./.env.${ENV} up --build
	
start: 
	@docker-compose --env-file ./.env up 
reset:
	@docker-compose  down -v --rmi all
	@docker-compose rm -f
	@echo "Reset complete."