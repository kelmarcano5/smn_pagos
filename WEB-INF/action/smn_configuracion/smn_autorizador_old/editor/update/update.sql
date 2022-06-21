UPDATE smn_pagos.smn_autorizador SET
	smn_usuario_rf=${fld:smn_usuario_rf},
	smn_entidades_rf=${fld:smn_entidades_rf},
	smn_sucursales_rf=${fld:smn_sucursales_rf},
	aut_estatus=${fld:aut_estatus},
	aut_vigencia=${fld:aut_vigencia},
	aut_idioma='${def:locale}',
	aut_usuario='${def:user}',
	aut_fecha_registro='${def:date}',
	aut_hora='${def:time}'

WHERE
	smn_autorizador_id=${fld:id}

