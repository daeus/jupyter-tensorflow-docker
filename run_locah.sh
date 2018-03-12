docker stop jupyter
docker rm jupyter
docker rmi jupyter-img

docker build -t jupyter-img ./
docker run -d -t --name jupyter -p 8888:8888 jupyter-img
