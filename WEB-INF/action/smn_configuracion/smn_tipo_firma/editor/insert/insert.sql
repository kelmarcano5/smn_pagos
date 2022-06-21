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
	${seq:currval@smn_pagos.seq_smn_tipo_firma},
	${fld:tfi_codigo},
	${fld:tfi_descripcion},
	${fld:tfi_estatus},
	${fld:tfi_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
