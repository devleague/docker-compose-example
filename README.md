# docker-compose intro


### Setup
1. `cp .env.example .env`
2. Edit `.env` variable for `PORT` and `IMAGE_VERSION`

### To build project
`docker-compose build`

### To run project
`docker-compose up`

### To run a project without terminal display (as a daemon)
`docker-compose up -d`

### To stop project
`docker-compose down`

### To stop project and destroy image and any volumes (total reset)
`docker-compose down -v`

### To build an production version of your image
`docker-compose -f docker-compose.yml -f docker-compose.prod.yml build`

### To push your official image version
`docker-compose push`

## Docker Compose Checklist
1. What base image do I start with?
2. What environment variables does my project need?
3. What do I need to separate from development and production environments?
4. How am I starting the application in development vs production?

## Best Practices
1. Don't use third party images for production applications.
2. Don't build sensitive files into your images.
3. Use COPY over ADD to prevent command injection possibilities.
4. Production images should be lean and have only what's needed to run your application.
5. Create your docker-compose commands as npm scripts so you don't have to type them repeatedly. (But know what they do)

### References
- [docker-compose command line reference](https://docs.docker.com/compose/reference/)
- [docker-compose multiple environment configuration](https://docs.docker.com/compose/extends/)