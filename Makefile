build: clean
	wget https://github.com/trexminer/T-Rex/releases/download/0.26.1/t-rex-0.26.1-linux.tar.gz
	tar xvf t-rex-0.26.1-linux.tar.gz
	docker build -f ./Dockerfile -t riteshja88/t-rex-nvidia-mining-docker:v1 .

clean:
	rm -rf t-rex*

run:
	docker run --runtime=nvidia -d --restart=always --name t-rex-nvidia-mining-docker -it riteshja88/t-rex-nvidia-mining-docker:v1

push:
	docker login
	docker push riteshja88/t-rex-nvidia-mining-docker:v1
