# Y2S1_small_projecet

## Structure 
* hello-world.js  - app code
* Dockerfile  - creates image with ubuntu
* README.md - casual readme file

## to run the image:
```
install
docker build -t hello-devops .

run container
docker run -p 3000:3000 -v ${PWD}:/app/data hello-devops

```
