# Welcome!

This repository contains docker-compose sample for Nextcloud and includes:

- fpm-alpine Nextcloud app server
- nginx frontend
- postgres database
- ansible playbook for self-signed certificate


## How to use?

1) Make .env file with sensitive variables. Example:

    ```
    NEXTCLOUD_ADMIN_PASSWORD=12345678
    POSTGRES_USER=nextcloud
    POSTGRES_PASSWORD=12345678
    POSTGRES_DB=nextcloud
    ```

2) Run ansible playbook for self-signed certificate generation:

    ```
    cd nextcloud-docker-compose
    ansible-playbook playbook-gen-crt.yml 
    ```

3) Deploy containers:

    ```
    docker-compose up -d
    ```
