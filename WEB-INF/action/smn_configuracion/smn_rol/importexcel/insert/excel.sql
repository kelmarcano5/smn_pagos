INSERT INTO smn_pagos.smn_rol
(
	smn_rol_id,
	smn_usuario_rf,
	rol_tipo,
	smn_corporaciones_rf,
	smn_entidades_rf,
	smn_sucursales_rf,
	smn_areas_servicios_rf,
	smn_unidades_servicios_rf,
	smn_estructura_organizacional_rf,
	rol_estatus,
	rol_vigencia,
	rol_idioma,
	rol_usuario,
	rol_fecha_registro,
	rol_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_rol},
	?,
	?,
	?,
	?,
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
