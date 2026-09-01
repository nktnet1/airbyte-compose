# Airbyte Compose

With Airbyte's
[deprecation of docker compose in favour of `abctl`](https://docs.airbyte.com/platform/deploying-airbyte/migrating-from-docker-compose),
there is no longer an easy way to
selfhost it using PaaS services like
[Coolify](https://github.com/coollabsio/coolify) or
[Dokploy](https://github.com/Dokploy/dokploy).

This repository serves as an example of how running Airbyte via docker compose
can still be achieved.

## Instructions

1. Clone the repository:

    ```sh
    git clone https://github.com/nktnet1/airbyte-compose
    cd airbyte-compose
    ```

2. Set up environment variables:

    ```sh
    cp .env.example .env
    ```

    Change all password fields stubbed with the value `CHANGE_ME`

3. Start all services:

    ```sh
    docker compose up
    ```

4. Visit http://127.0.0.1:8000 and set up your account. You can then log in
   with the `AIRBYTE_ADMIN_PASSWORD` specified in the `.env` file.

## References

### Templates

- Coolify: https://github.com/coollabsio/coolify/pull/11568
- Dokploy: https://github.com/Dokploy/templates/pull/1125

### Discussions & Requests

- Airbyte Deprecation: https://github.com/airbytehq/airbyte/discussions/40599
- Coolify Request: https://github.com/coollabsio/coolify/discussions/2421
- Dokploy Request: https://github.com/Dokploy/templates/issues/492
