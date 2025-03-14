# Banking Microservice

Um microserviço bancário robusto, seguro e escalável construído com Spring Boot, oferecendo gerenciamento abrangente de contas, processamento de transações e registro de auditoria.

## Funcionalidades

- **Gerenciamento de Usuários**
  - Registro e autenticação seguros de usuários
  - Controle de acesso baseado em função
  - Registro seguro de usuários

- **Gerenciamento de Contas**
  - Suporte a vários tipos de conta (Poupança, Corrente, Investimento, Empresarial)
  - Suporte a múltiplas moedas
  - Monitoramento e validação de saldo
  - Gerenciamento do status da conta

- **Segurança**
  - Autenticação baseada em JWT
  - Criptografia de senhas
  - Gestão de sessão
  - Controle de IPs
  
- **Processamento de Transações**
  - Transferências seguras
  - Rastreamento de status de transação
  - Validação de moeda e saldo
  - Atualização automática do saldo
  
- **Auditoria**
  - Registro de eventos do sistema
  - Registro de auditoria de todas as transações e eventos

## Stack Tecnológico

- **Framework**: Spring Boot 3.1.0
- **Linguagem**: Java 17
- **Banco de Dados**: PostgreSQL
- **Segurança**: Spring Security com JWT
- **Documentação**: SpringDoc OpenAPI (Swagger)
- **Migração de Banco**: Flyway
- **Ferramenta de Build**: Maven
- **Containerização**: Docker

## Requisitos

- Java 17 ou superior
- Maven instalado
- Docker e Docker Compose

## Como Configurar

1. **Clonar o repositório**
   ```bash
   git clone https://github.com/yourusername/banking-microservice.git
   cd banking-microservice
   ```

2. **Configurar as variáveis de ambiente**
   - Copie `.env.example` para `.env`
   - Atualize as credenciais no arquivo `.env` (banco de dados, JWT, etc.)

3. **Compilar a aplicação**
   ```bash
   mvn clean package
   ```

4. **Executar com Docker**
   ```bash
   docker-compose up -d
   ```

5. **Acessar a aplicação**
   - Interface Swagger UI: [http://localhost:8080/swagger-ui.html](http://localhost:8081/swagger-ui.html)
   - Documentação da API: [http://localhost:8081/api-docs](http://localhost:8081/api-docs)

## Endpoints da API

### Autenticação
- **POST** `/api/auth/register` - Registrar um novo usuário
- **POST** `/api/auth/login` - Realizar login
- **POST** `/api/auth/logout` - Realizar logout

### Contas Bancárias
- **POST** `/api/accounts` - Criar uma nova conta
- **GET** `/api/accounts/{accountNumber}` - Obter detalhes da conta
- **GET** `/api/accounts` - Listar todas as contas do usuário
- **DELETE** `/api/accounts/{accountNumber}` - Encerrar conta

### Transações
- **POST** `/api/transactions` - Criar nova transação
- **GET** `/api/transactions/{id}` - Obter detalhes da transação

## Estrutura do Banco de Dados

- `users` - Informações dos usuários
- `accounts` - Contas bancárias
- `transactions` - Transações financeiras
- `audit_log` - Registros de auditoria do sistema
- `user_sessions` - Sessões ativas de usuários

## Medidas de Segurança

1. **Autenticação e Autorizacão**
   - Token de autenticação JWT
   - Hash de senha seguro (BCrypt)
   - Gerenciamento de sessões

2. **Proteção de Dados**
   - Validação de entrada
   - Prevenção contra SQL Injection
   - Proteção contra XSS e CSRF
   
3. **Segurança em Transações**
   - Validação de moeda e saldo
   - Registros de auditoria detalhados
   - Atomicidade nas transações

## Padrões de Desenvolvimento

1. **Estilo de Código**
   - Seguir convenções do Java
   - Adotar padrões de projeto do Spring

2. **Processo de Desenvolvimento**
   - Utilização de branches para features
   - Revisões de Pull Request
   - Versionamento semântico (Semantic Versioning)
   - Uso de commits convencionais

3. **Testes**
   - Implementação de testes unitários e de integração
   - Monitoramento de métricas de desempenho
   - Registro e análise de erros

## Monitoramento e Auditoria

- Logs de auditoria do sistema
- Registros de atividade do usuário
- Métricas de desempenho
- Monitoramento de eventos

## Como Contribuir

1. Faça um fork do repositório.
2. Crie um branch para sua funcionalidade.
3. Envie um Pull Request.
4. Aguarde revisão e feedback.

## Suporte

Para suporte e dúvidas, abra uma issue no repositório ou entre em contato com a equipe de desenvolvimento.

Repositório: [bank_microservice](https://github.com/kippeer/bank_microservice)



