UPDATE smn_pagos.smn_autorizador_firmas_cuentas SET
	smn_autorizador_id=${fld:smn_autorizador_id},
	smn_entidades_financieras_rf=${fld:smn_entidades_financieras_rf},
	smn_tipo_firma_id=${fld:smn_tipo_firma_id},
	fcb_estatus=${fld:fcb_estatus},
	fcb_vigencia=${fld:fcb_vigencia},
	fcb_idioma='${def:locale}',
	fcb_usuario='${def:user}',
	fcb_fecha_registro={d '${def:date}'},
	fcb_hora='${def:time}'

WHERE
	smn_aut_firmas_cuentas_id=${fld:id}

