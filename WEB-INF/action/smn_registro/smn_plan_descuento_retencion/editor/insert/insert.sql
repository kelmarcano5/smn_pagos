INSERT INTO smn_pagos.smn_plan_descuento_retencion
(
	smn_plan_descuento_retencion_id,
	smn_proveedor_id,
	pdr_fecha_desde,
	pdr_fecha_hasta,
	smn_descuento_retencion_rf,
	pdr_monto_total,
	pdr_monto_parcial_descuento,
	pdr_estatus,
	pdr_idioma,
	pdr_usuario,
	pdr_fecha_registro,
	pdr_hora
)
VALUES
(
	${seq:currval@smn_pagos.seq_smn_plan_descuento_retencion},
	${fld:smn_proveedor_id},
	${fld:pdr_fecha_desde},
	${fld:pdr_fecha_hasta},
	${fld:smn_descuento_retencion_rf},
	${fld:pdr_monto_total},
	${fld:pdr_monto_parcial_descuento},
	'AC',
	'${def:locale}',
	'${def:user}',
	'${def:date}',
	'${def:time}'
)
