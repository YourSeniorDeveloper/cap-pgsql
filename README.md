# Referencias
https://github.com/gusstanley/sap-cap-postgresql
https://community.sap.com/t5/technology-blog-posts-by-sap/run-and-deploy-sap-cap-node-js-or-java-with-postgresql-on-sap-btp-cloud/ba-p/13558467


# Criação da entidade de cadastro de pessoas

# Criação do serviço padrão

# Criação da aplicação padrão

# adicionar suporte para PostgreSQL
npm add @cap-js/postgres

# adicionar deployment configuration
cds add postgres

# adicionar pacotes de segurança
npm add passport
npm add @sap/xssec

# ajustar packages json
  "cds": {
    "requires": {
      "db": {
        "kind": "postgres",
        "impl": "@cap-js/postgres"          
      },
      "auth": {
        "[development]": {
          "kind": "dummy"
        },
        "[production]": {
          "kind": "xsuaa"
        }
      }
    }
  },

# Executar npm install para equalizar pacotes
npm install

# fazer o build da aplicação
npx cds build  

# adicionar suporte para MTA
cds add mta


