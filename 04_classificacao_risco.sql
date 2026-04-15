SELECT
    cliente_id,
    dt_ult_compra,
    mes_ult_compra,
    24306 - mes_ult_compra AS df_meses,
    CASE 
        WHEN 24306 - mes_ult_compra >= 4 THEN 'risco'
        ELSE 'sem risco'
    END AS nivel_risco
FROM vw_ult_compra_cliente;
