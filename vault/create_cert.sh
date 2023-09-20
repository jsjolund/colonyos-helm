#!/bin/bash
#
openssl genrsa -out tls-ca.key 2048                                                                     16:16:47
openssl req -x509 -new -nodes -key tls-ca.key -subj "/CN=MyLocalCA/O=MyOrgName" -days 3650 -out tls-ca.cert
openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes -keyout ca.key -out ca.crt -subj "/CN=MyLocalCA/O=ColonyOS"
openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes \
  -keyout vault.key -out vault.crt -extensions SAN -config \
  <(echo "[req]"; 
    echo distinguished_name=req; 
    echo "[SAN]"; 
    echo subjectAltName=DNS:vault-0.vault-internal,DNS:vault-1.vault-internal,DNS:vault-2.vault-internal,DNS:vault-3.vault-internal,DNS:vault-4.vault-internal
    ) \
  -subj "/C=SE/ST=Norrbotten/L=Lulea/O=ColonyOS/CN=VaultServer"

kubectl create secret generic tls-server \
  --namespace=vault \
  --from-file=fullchain.pem=path_to_your_fullchain.pem \
  --from-file=server.key=path_to_your_server.key \
  --from-file=client-auth-ca.pem=path_to_your_client-auth-ca.pem


kubectl create secret generic tls-ca \
  --namespace=vault \
  --from-file=ca.crt=path_to_your_ca.crt

kubectl create secret generic kms-creds \
  --namespace=vault \
  --from-file=path_to_your_kms_credential_file
