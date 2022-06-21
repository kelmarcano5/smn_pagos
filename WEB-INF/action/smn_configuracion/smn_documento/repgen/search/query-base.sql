select
		smn_pagos.smn_documento.smn_documento_id,
	${field}
from
	smn_pagos.smn_documento
where
		smn_pagos.smn_documento.smn_documento_id is not null
	${filter}
	
	
