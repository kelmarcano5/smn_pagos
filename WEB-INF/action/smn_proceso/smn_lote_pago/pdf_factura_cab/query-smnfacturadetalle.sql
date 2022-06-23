select smn_comercial.smn_factura_impresion_detalle.smn_grupo_titulo_impresion_rf as titulo_id,
    smn_comercial.smn_factura_impresion_detalle.fim_codigo,
	smn_comercial.smn_factura_impresion_detalle.fim_descripcion,
	smn_comercial.smn_factura_impresion_detalle.fim_monto_ml,
	smn_comercial.smn_factura_impresion_detalle.fim_monto_ma,
	smn_comercial.smn_factura_impresion_detalle.fim_cantidad,
	smn_comercial.smn_pedido_cabecera.pca_monto_descuento_ml
from
	smn_comercial.smn_factura_impresion_detalle 
	inner join smn_comercial.smn_pedido_cabecera on smn_comercial.smn_pedido_cabecera.smn_pedido_cabecera_id = smn_comercial.smn_factura_impresion_detalle.smn_pedido_cabecera_id
	inner JOIN smn_comercial.smn_rel_pedido_factura ON smn_comercial.smn_rel_pedido_factura.smn_pedido_cabecera_id = smn_comercial.smn_pedido_cabecera.smn_pedido_cabecera_id

where
    smn_comercial.smn_factura_impresion_detalle.smn_pedido_cabecera_id=${fld:id}
