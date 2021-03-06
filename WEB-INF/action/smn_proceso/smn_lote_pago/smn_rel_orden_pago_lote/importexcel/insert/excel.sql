INSERT INTO smn_pagos.smn_rel_orden_pago_lote
(
	smn_rel_orden_pago_lote_id,
	smn_orden_pago_id,
	smn_lote_pago_id,
	smn_proveedor_rf,
	smn_documento_id,
	eol_numero_pago,
	eol_fecha_pago,
	eol_referencia_bancaria,
	eol_monto_pago_ml,
	eol_monto_incremento_ml,
	eol_monto_anticipo_ml,
	eol_monto_retencion_ml,
	eol_monto_neto_ml,
	eol_diferencial_cambiario_ml,
	smn_moneda_rf,
	smn_tasa_cambio_rf,
	eol_monto_pago_ma,
	eol_monto_incremento_ma,
	eol_monto_anticipo_ma,
	eol_monto_retencion_ma,
	eol_monto_neto_ma,
	eol_estatus,
	eol_fecha_registro
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_rel_orden_pago_lote},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
