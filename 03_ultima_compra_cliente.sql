CREATE VIEW vw_ult_compra_cliente AS
SELECT
    cliente_id,
    MAX(data_venda) AS dt_ult_compra,
    SUBSTRING(MAX(data_venda), 1, 4) * 12 +
    SUBSTRING(MAX(data_venda), 6, 2) AS mes_ult_compra
FROM tb_vendas_brutos
GROUP BY cliente_id;
