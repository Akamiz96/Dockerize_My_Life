docker build -t python-docker my_app/. -f my_app/Dockerfile

docker network create my-network
docker run -d --restart=always --name pythonapp -p 8081:8081 --network my-network \
                python-docker
docker run -d --restart=always --name db --network my-network -e POSTGRES_PASSWORD=postgres \
                -e POSTGRES_USER=postgres -e POSTGRES_DB=postgres postgres:12 