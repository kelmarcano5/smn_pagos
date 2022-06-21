UPDATE smn_pagos.smn_canal_pago SET
	cdp_codigo=${fld:cdp_codigo},
	cdp_descripcion=${fld:cdp_descripcion},
	cdp_estatus=${fld:cdp_estatus},
	cdp_vigencia=${fld:cdp_vigencia},
	cdp_idioma='${def:locale}',
	cdp_usuario='${def:user}',
	cdp_fecha_registro={d '${def:date}'},
	cdp_hora='${def:time}'

WHERE
	smn_canal_pago_id=${fld:id}

