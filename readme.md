# Docker setup to install foundry VTT on a servier with docker

## 0: Prerequisites

1. Install docker
2. Clone this repo and `cd` there.
3. Setup secrets
  - `cp .env.example .env`
  - `vi .env`
  - put in your unique values
4. `mkdir data` to prepare data dir

## 1: Install nginx-proxy containers for https support

1. `./proxy.sh`

## 2: 