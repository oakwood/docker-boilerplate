#!/bin/zsh

# Colors
RED='\033[0;31m'
NC='\033[0m' # No Color
WORK_DIR=$(pwd)

HOSTS="/etc/hosts"
ENV_PATH=".env"

# Load .env
set -e
source "$ENV_PATH"

# # Setup SSL Certificates
cd docker/cli && ./create-cert.sh
cd $WORK_DIR

if [ -z "$COMPOSE_PROJECT_NAME" ]
then
	echo
	echo -e "${RED}COMPOSE_PROJECT_NAME is not defined in $ENV_PATH."
	echo "Add COMPOSE_PROJECT_NAME=*projectName* to $ENV_PATH and run this script again.${NC}"
	exit 1
fi

docker-compose run composer install
docker-compose up -d

echo "Done"