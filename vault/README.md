 kubectl exec -n vault -ti vault-0 -- vault operator init     
 ./unseal.sh
 kubectl port-forward svc/vault 8200:8200 
 vault login  

Keycloak integration
vault auth enable oidc  

vault write auth/oidc/config oidc_discovery_url="https://keycloak.colonyos/auth/realms/colonyos" oidc_client_id="vault-auth" oidc_client_secret="CD32rBqyPSyAzhJJngR51VVPnDyChkoP" default_role="test"

vault write auth/oidc/config oidc_discovery_url="https://keycloak.colonyos.io/realms/colonyos" oidc_client_id="vault-auth" oidc_client_secret="CD32rBqyPSyAzhJJngR51VVPnDyChkoP" default_role="test"

