UPDATE smn_pagos.smn_control_documento SET

	dpd_estatus='AN'
WHERE
	smn_pagos.smn_control_documento.smn_solicitud_documento_id=${fld:id_solicitud_documento}

