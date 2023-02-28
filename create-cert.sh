openssl req -subj '/CN=test.keycloak.org/O=Test Keycloak./C=US' -newkey rsa:2048 -nodes -keyout tls.key -x509 -days 365 -out tls.crt
kubectl create secret tls keycloak-tls-secret --cert tls.crt --key tls.key --dry-run=client -oyaml > keycloak-tls.yaml
rm -f tls.key tls.crt
kubectl create secret generic keycloak-db-secret --from-literal=username=pgadmin --from-literal=password=pgadmin123 --dry-run=client -oyaml > keycloak-postgres-creds.yaml
