UPDATE smn_pagos.smn_formato_impresion SET
	foi_codigo=${fld:foi_codigo},
	foi_descripcion=${fld:foi_descripcion},
	foi_texto=${fld:foi_texto},
	foi_estatus=${fld:foi_estatus},
	foi_vigencia=${fld:foi_vigencia},
	foi_idioma='${def:locale}',
	foi_usuario='${def:user}',
	foi_fecha_registro={d '${def:date}'},
	foi_hora='${def:time}'

WHERE
	smn_clave_formato_impresion_id=${fld:id}

