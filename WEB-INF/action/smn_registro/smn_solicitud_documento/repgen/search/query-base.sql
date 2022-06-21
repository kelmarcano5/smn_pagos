select
		smn_pagos.smn_solicitud_documento.smn_solicitud_documento_id,
	${field}
from
	smn_pagos.smn_solicitud_documento
where
		smn_pagos.smn_solicitud_documento.smn_solicitud_documento_id is not null
	${filter}
	
	
