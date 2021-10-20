## Requirements

- `docker`
- `docker-compose`
- `mkcerts`
- `composer`
- `yarn`

## Installation

- Copy `.env.example` to `.env` in root of your project
- Change the names in `COMPOSE_PROJECT_NAME` , `DOMAIN` and `SITE_NAME`
- Run `./install.sh`
- Add `127.0.0.1 mayadelorez.localcms` to `/etc/hosts`
- Install plugin dependencies `cd public/wp-content/plugins/owc-gutenberg && composer install && yarn`
- To start dev development for plugin run `cd public/wp-content/plugins/owc-gutenberg && yarn start`
