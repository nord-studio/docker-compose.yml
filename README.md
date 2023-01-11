# docker-compose.yml

🐳 A catalogue of different pre-configured Docker compose files.

## List

Here's the entire list of different services we have pre-configured.

- [Node 1](https://github.com/nord-studio/docker-compose.yml/blob/main/n1) - The setup we use for our Node 1, contains the following:
  - [Watchtower](https://github.com/containrrr/watchtower/) - Docker image updater.
  - [Nginx Proxy](https://github.com/nginx-proxy/nginx-proxy) - Automated nginx proxy using docker-gen
  - [Proxy ACME](https://github.com/nginx-proxy/acme-companion) - Automated creation, renewal and use of SSL certificates through the ACME protocol.
  - [Landing](https://github.com/nord-studio/docker-compose.yml/blob/main/n1/landing) - A small webpage to display on the sub domain (n1.nordstud.io).
  - [Docker Mailserver](https://github.com/docker-mailserver/docker-mailserver) - Mail server (SMTP, IMAP, LDAP, Antispam, Antivirus, etc.)
  - [Webmail](https://github.com/nord-studio/docker-compose.yml/blob/main/n1/mail/web) - A small static page for the mail server.
  - [Vaultwarden](https://github.com/dani-garcia/vaultwarden) - Unofficial Bitwarden compatible server written in Rust.
