INSERT INTO smn_pagos.smn_plan_descuento_retencion
(
	smn_plan_descuento_retencion_id,
	smn_clase_auxiliar_rf,
	smn_proveedor_id,
	pdr_fecha_desde,
	pdr_fecha_hasta,
	smn_descuento_retencion_rf,
	pdr_estatus,
	pdr_idioma,
	pdr_usuario,
	pdr_fecha_registro,
	pdr_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_plan_descuento_retencion},
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
