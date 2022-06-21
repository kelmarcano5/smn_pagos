UPDATE smn_pagos.smn_solicitud_documento SET

	sdp_estatus_solicitud='AN'
WHERE
	smn_pagos.smn_solicitud_documento.smn_solicitud_documento_id=${fld:id_solicitud_documento}


