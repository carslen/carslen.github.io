# HELM Charts

To use our HELM charts in

## Development/Snapshot

```shell
helm repo add tractus-x-dev https://eclipse-tractus-x.github.io/charts/dev
helm search repo tractus-x-dev
NAME                                    CHART VERSION   APP VERSION             DESCRIPTION                                       
tractus-x/managed-identity-wallets      0.5.11          2.1.1                   Managed Identity Wallets Service                  
tractus-x/portal                        0.6.0           0.6.0                   Helm chart for Catena-X Portal frontend           
tractus-x/portal-backend                0.6.0           0.6.0                   Helm chart for Catena-X Portal backend            
tractus-x/registry                      0.2.2           0.2.0-M2-multi-tenancy  Tractus-X Digital Twin Registry Helm Chart        
tractus-x/semantic-hub                  0.1.2           0.1.0-M2                Helm Chart for the Catena-X Semantic Hub Applic...
```

## Production

```shell
helm repo add tractus-x https://eclipse-tractus-x.github.io/charts/stable
helm search repo tractus-x
NAME                                    CHART VERSION   APP VERSION             DESCRIPTION                                       
tractus-x/managed-identity-wallets      0.5.11          2.1.1                   Managed Identity Wallets Service                  
tractus-x/portal                        0.6.0           0.6.0                   Helm chart for Catena-X Portal frontend           
tractus-x/portal-backend                0.6.0           0.6.0                   Helm chart for Catena-X Portal backend            
tractus-x/registry                      0.2.2           0.2.0-M2-multi-tenancy  Tractus-X Digital Twin Registry Helm Chart        
tractus-x/semantic-hub                  0.1.2           0.1.0-M2                Helm Chart for the Catena-X Semantic Hub Applic...
```
