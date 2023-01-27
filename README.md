# README

## Project

Basically you can find out if your are an introvert on extrovert person by answer some simple questions:

![finalversionpt.gif](docs%2Ffinalversionpt.gif)

The result will not be stored on database, just on session and the user can redo it as many times he wants.

## Libraries
- Ruby 3.2
- Rails 7
- Tailwind CSS
- ViewComponents
- Stimulus.js
- Postgres

## Installation and running locally

This project as a docker setup for development and test.

Run docker compose to build all containers

```shell
docker compose up -d --build
```

Install dependencies and create the database

```shell
docker exec -it personality-quiz-ruby bin/docker-entrypoint
```

Start the web server and tailwind stuffs:

```shell
docker exec -it personality-quiz-ruby bin/dev
```

open [the application](http://localhost:3000) and fill out the quiz.


To run the specs:

```shell
docker exec -it personality-quiz-ruby bundle exec rspec
```

Coverage expected is 100%:
![coverage.png](docs%2Fcoverage.png)
