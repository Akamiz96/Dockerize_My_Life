docker build -t python-docker my_app/. -f my_app/Dockerfile

docker network create my-network
docker run -d --restart=always --name my-running-app -p 8081:8081 --network my-network python-docker