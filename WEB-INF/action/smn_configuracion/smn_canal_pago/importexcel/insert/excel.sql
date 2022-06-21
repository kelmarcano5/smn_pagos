INSERT INTO smn_pagos.smn_canal_pago
(
	smn_canal_pago_id,
	cdp_codigo,
	cdp_descripcion,
	cdp_estatus,
	cdp_vigencia,
	cdp_idioma,
	cdp_usuario,
	cdp_fecha_registro,
	cdp_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_canal_pago},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
