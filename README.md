# Welcome!

This repository contains docker-compose sample for Nextcloud and includes:

- fpm-alpine Nextcloud app server
- nginx frontend
- postgres database
- ansible playbook for self-signed certificate


## How to use?

1) Gen Token

        openssl rand -hex 16

2) Make .env file with sensitive variables. Example:

        TOKEN=*************53686 # token from step one
        NEXTCLOUD_ADMIN_PASSWORD: a12345678
        POSTGRES_DB:              nextcloud
        POSTGRES_USER:            nextcloud
        POSTGRES_PASSWORD:        a12345678

3) Run ansible playbook for self-signed certificate generation:

        cd nextcloud-docker-compose
        ansible-playbook playbook-gen-crt.yml

4) Deploy containers:

        docker-compose up -d
