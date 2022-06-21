INSERT INTO smn_pagos.smn_tipo_firma
(
	smn_tipo_firma_id,
	tfi_codigo,
	tfi_descripcion,
	tfi_estatus,
	tfi_vigencia,
	tfi_idioma,
	tfi_usuario,
	tfi_fecha_registro,
	tfi_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_tipo_firma},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
