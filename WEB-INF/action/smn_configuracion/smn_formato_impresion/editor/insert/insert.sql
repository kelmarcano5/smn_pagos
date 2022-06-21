INSERT INTO smn_pagos.smn_formato_impresion
(
	smn_clave_formato_impresion_id,
	foi_codigo,
	foi_descripcion,
	foi_texto,
	foi_estatus,
	foi_vigencia,
	foi_idioma,
	foi_usuario,
	foi_fecha_registro,
	foi_hora
)
VALUES
(
	${seq:currval@smn_pagos.seq_smn_formato_impresion},
	${fld:foi_codigo},
	${fld:foi_descripcion},
	${fld:foi_texto},
	${fld:foi_estatus},
	${fld:foi_vigencia},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
