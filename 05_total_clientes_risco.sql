SELECT
    COUNT(cliente_id) AS total_clientes_risco
FROM vw_ult_compra_cliente
WHERE 24306 - mes_ult_compra >= 4;
