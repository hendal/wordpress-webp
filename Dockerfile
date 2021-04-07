FROM bitnami/wordpress:5.7.0
USER root
RUN install_packages webp && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && php wp-cli.phar --info && chmod +x wp-cli.phar && sudo mv wp-cli.phar /usr/local/bin/wp
USER 1001
