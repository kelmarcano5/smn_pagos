UPDATE smn_pagos.smn_firmas_cuentas SET
	fcb_codigo=${fld:fcb_codigo},
	fcb_descripcion=${fld:fcb_descripcion},
	smn_cuentas_bancarias_rf=${fld:smn_cuentas_bancarias_rf},
	fcb_cantidad=${fld:fcb_cantidad},
	smn_tipo_firma_id=${fld:smn_tipo_firma_id},
	fcb_estatus=${fld:fcb_estatus},
	fcb_vigencia=${fld:fcb_vigencia},
	fcb_idioma='${def:locale}',
	fcb_usuario='${def:user}',
	fcb_fecha_registro={d '${def:date}'},
	fcb_hora='${def:time}'

WHERE
	smn_firmas_cuentas_id=${fld:id}

