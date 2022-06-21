UPDATE smn_pagos.smn_solicitud_documento SET
	sdp_fecha_recepcion=${fld:sdp_fecha_recepcion},
	sdp_numero_inicial=${fld:sdp_numero_inicial},
	sdp_numero_final=${fld:sdp_numero_final},
	sdp_cantidad_documentos=${fld:sdp_cantidad_documentos},
	sdp_estatus_solicitud='RE',
	sdp_idioma='${def:locale}',
	sdp_usuario='${def:user}',
	sdp_fecha_registro={d '${def:date}'},
	sdp_hora='${def:time}'

WHERE
	smn_solicitud_documento_id=${fld:id}

