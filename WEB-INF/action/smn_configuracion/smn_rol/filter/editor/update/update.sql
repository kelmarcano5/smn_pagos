UPDATE smn_pagos.smn_rol SET
	smn_usuario_rf=${fld:smn_usuario_rf},
	rol_tipo=${fld:rol_tipo},
	smn_corporaciones_rf=${fld:smn_corporaciones_rf},
	smn_entidades_rf=${fld:smn_entidades_rf},
	smn_sucursales_rf=${fld:smn_sucursales_rf},
	smn_areas_servicios_rf=${fld:smn_areas_servicios_rf},
	smn_unidades_servicios_rf=${fld:smn_unidades_servicios_rf},
	smn_estructura_organizacional_rf=${fld:smn_estructura_organizacional_rf},
	rol_estatus=${fld:rol_estatus},
	rol_vigencia=${fld:rol_vigencia},
	rol_idioma='${def:locale}',
	rol_usuario='${def:user}',
	rol_fecha_registro={d '${def:date}'},
	rol_hora='${def:time}'

WHERE
	smn_rol_id=${fld:id}

