# API REST para Gerenciamento de Servidores

**Candidato:** SANDRO DIAS PACHECO  
**CPF:** 057.780.288-73

## Visão Geral

Esta API REST foi desenvolvida em PHP utilizando o Slim Framework e orquestrada via Docker Compose. A solução implementa os seguintes recursos:

- **CRUD** para as entidades:
  - Servidor Efetivo
  - Servidor Temporário
  - Unidade
  - Lotação
- **Autenticação** com token JWT que expira em 5 minutos, com renovação disponível.
- Upload de fotografias para o servidor Min.IO, com geração de links temporários (válidos por 5 minutos).
- Validação de dados e tratamento global de erros.
- Consulta de servidores efetivos por unidade e consulta do endereço funcional a partir de parte do nome do servidor.
- Paginação em todos os endpoints de listagem.
- Persistência dos dados no PostgreSQL.

## Pré-requisitos

- **Docker** e **Docker Compose**
- **Git**
- **Composer** (para desenvolvimento local e para a geração da pasta `vendor`)

