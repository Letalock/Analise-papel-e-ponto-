SELECT 
    MAX(data_venda) AS dt_ref,
    SUBSTRING(MAX(data_venda), 1, 4) * 12 +
    SUBSTRING(MAX(data_venda), 6, 2) AS mes_ref
FROM tb_vendas_brutos;
