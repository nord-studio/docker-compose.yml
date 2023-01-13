# 🔧 Node 1

At Nord, N1 is commonly used for hosting communication, automation, and utilities. This Docker node has preconfigured the services we use for easy deployment if we move servers, and you can use it too!

## Images
- [Watchtower](https://github.com/containrrr/watchtower/) - Docker image updater.
- [Nginx Proxy](https://github.com/nginx-proxy/nginx-proxy) - Automated nginx proxy using docker-gen.
- [Proxy ACME](https://github.com/nginx-proxy/acme-companion) - Automated creation, renewal and use of SSL certificates through the ACME protocol.
- [Landing](https://github.com/nord-studio/docker-compose.yml/blob/main/n1/landing) -  A static NextJS app to get rid of the really annoying 503 page.
- [Docker Mailserver](https://github.com/docker-mailserver/docker-mailserver) - AIO Mail server (SMTP, IMAP, LDAP, Antispam, Antivirus, etc.)
- [Webmail](https://github.com/nord-studio/docker-compose.yml/blob/main/n1/mail/web) - A static NextJS app which displays general information.
- [Vaultwarden](https://github.com/dani-garcia/vaultwarden) - Unofficial Bitwarden compatible server written in Rust.

> Last updated: 00:32 13th January 2023

## Installation
I have tried to make installing this node as easy as possible, ultimatly, you have two options.

### 1. `setup.sh`.
I was a bit cheeky and made a bash script which automates installing prerequisits, setting up the enviroment, downloading files, etc. Very boring stuff.
Only thing you gotta do is make sure you're using a **Debian based distro**, become god (**sudo su**), and run the command below: 

```bash
bash <(curl -s https://raw.githubusercontent.com/nord-studio/docker-compose.yml/main/n1/setup.sh)
```

If you have any issues with the script, please open an issue or [email me](mailto:tygerxqt@nordstud.io).

### 2. Manually
I totally understand why you wouldn't want to use the script, always better to be safe than sorry. Make sure you are using a **Debian based distro** and are god (**root / sudo su**) before you continue.

```bash
# Update all packages
apt update && apt upgrade -y

# Required for downloading files
apt install git wget unzip

# Install Docker
apt-get install ca-certificates curl gnupg lsb-release
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install docker-ce ddcker-ce-cli containerd.io docker-compose-plugin

# Install NodeJS (Only if you want landing and webmail)
curl -fsSL https;//deb.nodesource.com/setup-16.x \ bash - 77\
apt-get update
apt-get install -y nodejs

# Downloading files
wget https://github.com/nord-studio/docker-compose.yml/releases/download/0.1/n1.zip 
unzip -o n1.zip
rm -r n1.zip

# Edit your config files, remove containers you don't want, do whatever you want...
# Then start all containers
docker compose up -d

# Stop all containers
docker compose down
```

I would also recommend you go check out [lazydocker](https://github.com/jesseduffield/lazydocker) too, it's a very helpful tool when managing a lot of Docker containers.

## Configuration
Sorry, still working on this part. It's currently 2:30am and I am very tired.

## Support
If additional help is needed, please don't hesitate to either create an [issue](https://github.com/nord-studio/docker-compose.yml/issues/new), [email us](mailto:hello@nordstud.io), or [tweet](https://twitter.com/intent/tweet?text=%40wearenordstudio) to us.
