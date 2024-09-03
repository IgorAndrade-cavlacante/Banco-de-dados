-- E-commerce e Gestão de Inventário
-- Exercício 1:
  
  SELECT
    p.order_id,
    c.customer_name,
    c.customer_email
FROM
    orders AS p
INNER JOIN
    customers AS c ON p.customer_id = c.customer_id;

-- Sistema de Gestão de Relacionamento com o Cliente (CRM
-- Exercício 2:

SELECT
    c.campaign_id,
    c.campaign_name,
    p.customer_name
FROM
    campaigns AS c
INNER JOIN
    campaign_participations AS p ON c.campaign_id = p.campaign_id;

-- Finanças e Controle Orçamentário
-- Exercício 3:

SELECT
    t.id AS transacao_id,
    t.descricao AS transacao_descricao,
    c.nome AS categoria_orcamento
FROM
    transacoes t
LEFT JOIN
    categorias_orcamento c ON t.categoria_id = c.id;

-- Saúde e Gestão de Prontuários Eletrônicos
-- Exercício 4:

SELECT
    p.id AS paciente_id,
    p.nome AS nome_paciente,
    pr.numero_prontuario
FROM
    pacientes p
LEFT JOIN
    prontuarios pr ON p.id = pr.paciente_id;

-- Logística e Cadeia de Suprimentos
-- Exercício 5:

SELECT
    f.id AS fornecedor_id,
    f.nome AS nome_fornecedor,
    p.nome AS nome_produto
FROM
    fornecedores f
LEFT JOIN
    produtos p ON f.id = p.fornecedor_id;
