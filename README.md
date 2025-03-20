# fastfood_infra_k8s

Este repositório contém a infraestrutura como código (IaC) para provisionar um cluster EKS (Amazon Elastic Kubernetes Service) utilizando Terraform.

## Estrutura do Projeto

- **`provider.tf`**: Configuração do provedor AWS.
- **`variables.tf`**: Definição de variáveis reutilizáveis para o projeto.
- **`eks-cluster.tf`**: Configuração do cluster EKS.
- **`eks-node-group.tf`**: Configuração do grupo de nós (Node Group) do EKS.
- **`eks-access.tf`**: Configuração de acesso ao cluster EKS.
- **`eks-access-policy.tf`**: Associação de políticas de acesso ao cluster EKS.
- **`.github/workflows/terraform.yml`**: Workflow do GitHub Actions para CI/CD com Terraform.
- **`.github/dependabot.yml`**: Configuração do Dependabot para atualizações automáticas de dependências.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) instalado.
- Credenciais AWS configuradas localmente.
- Permissões adequadas para criar recursos no AWS.

## Como Usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/fastfood_infra_k8s.git
   cd fastfood_infra_k8s