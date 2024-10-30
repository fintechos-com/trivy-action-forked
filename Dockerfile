FROM  acrcloudregistry.azurecr.io/ftos-trivy-cached-image:0.1
COPY entrypoint.sh /
RUN apk --no-cache add bash curl npm
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
