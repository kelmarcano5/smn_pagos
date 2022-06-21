UPDATE smn_pagos.smn_plan_descuento_retencion SET
	smn_proveedor_id=${fld:smn_proveedor_id},
	pdr_fecha_desde=${fld:pdr_fecha_desde},
	pdr_fecha_hasta=${fld:pdr_fecha_hasta},
	smn_descuento_retencion_rf=${fld:smn_descuento_retencion_rf},
	pdr_monto_total=${fld:pdr_monto_total},
	pdr_monto_parcial_descuento=${fld:pdr_monto_parcial_descuento},
	pdr_idioma='${def:locale}',
	pdr_usuario='${def:user}',
	pdr_fecha_registro={d '${def:date}'},
	pdr_hora='${def:time}'

WHERE
	smn_plan_descuento_retencion_id=${fld:id}

