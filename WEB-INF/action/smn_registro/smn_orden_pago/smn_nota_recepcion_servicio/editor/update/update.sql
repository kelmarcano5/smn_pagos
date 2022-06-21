UPDATE smn_pagos.smn_nota_recepcion_servicio SET
	smn_orden_compra_rf=${fld:smn_orden_compra_rf},
	smn_centro_costo_rf=${fld:smn_centro_costo_rf},
	smn_tipo_documento_rf=${fld:smn_tipo_documento_rf},
	smn_documento_rf=${fld:smn_documento_rf},
	smn_numero_documento_rf=${fld:smn_numero_documento_rf},
	smn_documento_id=${fld:smn_documento_id},
	smn_clase_rf=${fld:smn_clase_rf},
	smn_proveedor_id=${fld:smn_proveedor_id},
	smn_usuario_rf=${fld:smn_usuario_rf},
	nrs_monto_saldo_ml=${fld:nrs_monto_saldo_ml},
	nrs_monto_saldo_ma=${fld:nrs_monto_saldo_ma},
	nrs_monto_ml=${fld:nrs_monto_ml},
	nrs_monto_ma=${fld:nrs_monto_ma},
	smn_moneda_rf=${fld:smn_moneda_rf},
	nrs_monto_usado_ml=${fld:nrs_monto_usado_ml},
	nrs_monto_usado_ma=${fld:nrs_monto_usado_ma},
	nrs_estatus=${fld:nrs_estatus},
	nrs_idioma='${def:locale}',
	nrs_usuario='${def:user}',
	nrs_fecha_registro='${def:date}',
	nrs_hora='${def:time}'

WHERE
	smn_nota_recepcion_servicio_id=${fld:id}

