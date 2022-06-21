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
	${seq:nextval@smn_pagos.seq_smn_formato_impresion},
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
