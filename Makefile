.PHONY: build run docker-build clean

build:
	npm install && npm run build

run:
	npm run dev

docker-build:
	docker build -t nareshroboshop.azurecr.io/roboshop-frontend:${IMAGE_TAG} .
	docker push nareshroboshop.azurecr.io/roboshop-frontend:${IMAGE_TAG}

clean:
	rm -rf node_modules .next
