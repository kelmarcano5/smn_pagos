UPDATE smn_pagos.smn_solicitud_documento SET
	smn_documento_id=${fld:smn_documento_id},
	smn_rol_id=${fld:smn_rol_id},
	smn_entidad_bancaria_rf=${fld:smn_entidad_bancaria_rf},
	smn_cuenta_bancaria_rf=${fld:smn_cuenta_bancaria_rf},
	smn_usuario_id=${fld:smn_usuario_id},
	smn_clave_formato_impresion_id=${fld:smn_clave_formato_impresion_id},
	sdp_fecha_solicitud=${fld:sdp_fecha_solicitud},
	sdp_numero=${fld:sdp_numero},
	sdp_idioma='${def:locale}',
	sdp_usuario='${def:user}',
	sdp_fecha_registro={d '${def:date}'},
	sdp_hora='${def:time}'

WHERE
	smn_solicitud_documento_id=${fld:id}

