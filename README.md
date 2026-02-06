## Résumer du Projet
Dans une démarche DevOps, j’ai mis en œuvre un environnement de préproduction pour une application « Todo App » basée sur Spring Boot et une base de données Azure PostgreSQL managée, déployée dans un environnement cloud Azure Kubernetes Service (AKS). 
L’ensemble du cycle de vie applicatif a été automatisé à l’aide d’outils DevOps modernes : Docker pour la containerisation, GitHub Actions pour l’intégration et le déploiement continus (CI), Terraform pour la gestion d’infrastructure (IaC) et ArgoCD pour le CD. 
En parallèle, des services de monitoring avec Prometheus et Grafana, installés localement sur une VM VMware Workstation Pro 17, permettent d'observer l’état de santé de l’infrastructure Kubernetes.
## Ce projet répond à plusieurs défis clés du DevOps : 
- Deployement de l'infrastructure azure Via Térraform
- Automatiser l’intégralité du cycle de déploiement (CI/CD), 
- Assurer la portabilité et la scalabilité des applications avec les containers, 
- Centraliser la configuration et renforcer la traçabilité via GitOps (argoCD), 
- Garantir la disponibilité du service via des outils de supervision, 
- Sécuriser l’infrastructure cloud, 
- Et Exposer certains des services internes avec Ingress Nginx.

## Architecture Globale
<img width="12887" height="1602" alt="diagramme DP" src="https://github.com/user-attachments/assets/f905b852-409a-41f1-a014-8dbbdc96aa67" />

## Architecture infra Azure
<img width="6365" height="4630" alt="AzureExportedTemplate (1)" src="https://github.com/user-attachments/assets/26263e69-d8ba-4503-a72f-f4ffe40f667a" />

