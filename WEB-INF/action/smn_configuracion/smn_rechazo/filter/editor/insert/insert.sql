INSERT INTO smn_pagos.smn_rechazo
(
	smn_rechazo_id,
	rec_codigo,
	rec_descripcion,
	rec_estatus,
	rec_vigencia,
	rec_idioma,
	rec_usuario,
	rec_fecha_registro,
	rec_hora
)
VALUES
(
	${seq:currval@smn_pagos.seq_smn_rechazo},
	${fld:rec_codigo},
	${fld:rec_descripcion},
	${fld:rec_estatus},
	${fld:rec_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
