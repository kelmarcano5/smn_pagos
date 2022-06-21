INSERT INTO smn_pagos.smn_tipo_documento
(
	smn_tipo_documento_id,
	tdo_codigo,
	tdo_descripcion,
	tdo_tipo_movimiento,
	tdo_estatus,
	tdo_vigencia,
	tdo_idioma,
	tdo_hora,
	tdo_usuario,
	tdo_fecha_registro
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_tipo_documento},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:time}',
	'${def:user}',
	{d '${def:date}'}
)
