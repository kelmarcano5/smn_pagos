UPDATE smn_pagos.smn_formpag_documento_banco SET
	smn_documento_id=${fld:smn_documento_id},
	smn_forma_pago_rf=${fld:smn_forma_pago_rf},
	smn_entidad_financiera_rf=${fld:smn_entidad_financiera_rf},
	fdb_genera_transaccion=${fld:fdb_genera_transaccion},
	fdb_programa_impresion=${fld:fdb_programa_impresion},
	fdb_estatus=${fld:fdb_estatus},
	fdb_vigencia=${fld:fdb_vigencia},
	fdb_idioma='${def:locale}',
	fdb_usuario='${def:user}',
	fdb_fecha_registro={d '${def:date}'},
	fdb_hora='${def:time}'

WHERE
	smn_formpag_documento_banco_id=${fld:id}

