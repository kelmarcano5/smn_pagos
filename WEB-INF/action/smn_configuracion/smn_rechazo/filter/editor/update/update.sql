UPDATE smn_pagos.smn_rechazo SET
	rec_codigo=${fld:rec_codigo},
	rec_descripcion=${fld:rec_descripcion},
	rec_estatus=${fld:rec_estatus},
	rec_vigencia=${fld:rec_vigencia},
	rec_idioma='${def:locale}',
	rec_usuario='${def:user}',
	rec_fecha_registro={d '${def:date}'},
	rec_hora='${def:time}'

WHERE
	smn_rechazo_id=${fld:id}

