UPDATE smn_pagos.smn_anticipo SET
	smn_entidad_rf=${fld:smn_entidad_rf},
	smn_sucursal_rf=${fld:smn_sucursal_rf},
	smn_proveedor_rf=${fld:smn_proveedor_rf},
	smn_documento_id=${fld:smn_documento_id},
	ant_numero_documento=${fld:ant_numero_documento},
	smn_orden_compra_rf=${fld:smn_orden_compra_rf},
	ant_porcentaje=${fld:ant_porcentaje},
	ant_monto_ml=${fld:ant_monto_ml},
	ant_monto_ma=${fld:ant_monto_ma},
	ant_estatus=${fld:ant_estatus},
	smn_usuario_solicitante_rf=${fld:smn_usuario_solicitante_rf},
	smn_usuario_aprobador_rf=${fld:smn_usuario_aprobador_rf},
	smn_moneda_rf=${fld:smn_moneda_rf},
	smn_tasa_rf=${fld:smn_tasa_rf},
	ant_idioma='${def:locale}',
	ant_usuario='${def:user}',
	ant_fecha_registro={d '${def:date}'},
	ant_hora='${def:time}'

WHERE
	smn_anticipo_id=${fld:id}

