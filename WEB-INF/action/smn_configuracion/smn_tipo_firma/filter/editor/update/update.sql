UPDATE smn_pagos.smn_tipo_firma SET
	tfi_codigo=${fld:tfi_codigo},
	tfi_descripcion=${fld:tfi_descripcion},
	tfi_estatus=${fld:tfi_estatus},
	tfi_vigencia=${fld:tfi_vigencia},
	tfi_idioma='${def:locale}',
	tfi_usuario='${def:user}',
	tfi_fecha_registro={d '${def:date}'},
	tfi_hora='${def:time}'

WHERE
	smn_tipo_firma_id=${fld:id}

