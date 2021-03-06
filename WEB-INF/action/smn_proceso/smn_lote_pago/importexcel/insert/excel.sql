INSERT INTO smn_pagos.smn_lote_pago
(
	smn_lote_pago_id,
	smn_entidad_financiera_rf,
	smn_cuenta_bancaria_rf,
	smn_forma_pago_rf,
	smn_documento_id,
	lpa_numero_lote,
	lpa_descripcion_lote,
	lpa_fecha_lote,
	lpa_monto_lote_ml,
	smn_moneda_rf,
	smn_tasa_cambio_rf,
	lpa_monto_lote_ma,
	smn_canal_pago_id,
	lpa_ano_comprobante_contable,
	lpa_periodo_comprobante_contable,
	lpa_tipo_comprobante_contable_id,
	lpa_numero_comprobante_contable,
	lpa_estatus,
	lpa_fecha_registro
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_lote_pago},
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
