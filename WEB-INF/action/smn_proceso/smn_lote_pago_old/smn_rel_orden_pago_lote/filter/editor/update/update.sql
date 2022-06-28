UPDATE smn_pagos.smn_rel_orden_pago_lote SET
	smn_orden_pago_id=${fld:smn_orden_pago_id},
	smn_lote_pago_id=${fld:smn_lote_pago_id},
	smn_documento_id=${fld:smn_documento_id},
	eol_numero_pago=${fld:eol_numero_pago},
	eol_fecha_pago=${fld:eol_fecha_pago},
	eol_referencia_bancaria=${fld:eol_referencia_bancaria},
	eol_monto_pago_ml=${fld:eol_monto_pago_ml},
	smn_moneda_rf=${fld:smn_moneda_rf},
	smn_tasa_cambio_rf=${fld:smn_tasa_cambio_rf},
	eol_monto_pago_ma=${fld:eol_monto_pago_ma},
	eol_estatus=${fld:eol_estatus},
	eol_idioma='${def:locale}',
	eol_usuario='${def:user}',
	eol_fecha_registro={d '${def:date}'},
	eol_hora='${def:time}'

WHERE
	smn_rel_orden_pago_lote_id=${fld:id}

