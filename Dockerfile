FROM bitnami/wordpress:5.7.0
USER root
RUN install_packages webp
USER 1001
