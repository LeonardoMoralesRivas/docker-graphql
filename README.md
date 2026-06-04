# Github Actions - Pratice using a NestJS + GraphQL project

## About
This repo its a Gtihub Actions workflow practice to automate the CI/CD and updating the version of the project

## Pipeline
This Actions make a buildx for AMD64 and ARM64 then we push the images to docker hub and updating the tag using semantic versioning depends of the type of push in the repo 

## Stack
1. NestJS
2. TypeScript
3. Express
4. GrapQL
5. Docker
6. Github Action

## How to use it
When you are going to do a new push in the repo:
- Configure the Secrets (to login in Docker Hub)
- use "major" for braking changes --> 1.4.0 --> 2.0.0
- use "feat" for new features --> 1.4.0 --> 1.5.0



## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Installation

```bash
$ npm install
```

## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```


Nest is [MIT licensed](LICENSE).
