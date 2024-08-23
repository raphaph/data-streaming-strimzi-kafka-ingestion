CREATE OR REPLACE STREAM ksql_stream_customers_json
( -- através da mensagem estrutura o payload com base no struct abaixo
  "payload" STRUCT<"id" BIGINT,
                   "nome" VARCHAR,
                   "sexo" VARCHAR,
                   "endereco" VARCHAR,
                   "telefone" VARCHAR,
                   "email" VARCHAR,
                   "foto" VARCHAR,
                   "nascimento" VARCHAR,
                   "profissao" VARCHAR,
                   "dt_update" BIGINT,
                   "messagetopic" VARCHAR,
                   "messagesource" VARCHAR>
)
WITH (KAFKA_TOPIC='src-postgres-customers-json', VALUE_FORMAT='JSON');