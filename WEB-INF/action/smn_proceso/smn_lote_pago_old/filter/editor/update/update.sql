UPDATE smn_pagos.smn_lote_pago SET
	smn_entidad_financiera_rf=${fld:smn_entidad_financiera_rf},
	smn_cuenta_bancaria_rf=${fld:smn_cuenta_bancaria_rf},
	smn_forma_pago_rf=${fld:smn_forma_pago_rf},
	smn_documento_id=${fld:smn_documento_id},
	lpa_numero_lote=${fld:lpa_numero_lote},
	lpa_descripcion_lote=${fld:lpa_descripcion_lote},
	lpa_fecha_lote=${fld:lpa_fecha_lote},
	lpa_monto_lote_ml=${fld:lpa_monto_lote_ml},
	lpa_monto_lote_ma=${fld:lpa_monto_lote_ma},
	smn_estatus_documento=${fld:smn_estatus_documento},
	lpa_idioma='${def:locale}',
	lpa_usuario='${def:user}',
	lpa_fecha_registro={d '${def:date}'},
	lpa_hora='${def:time}'

WHERE
	smn_lote_pago_id=${fld:id}

