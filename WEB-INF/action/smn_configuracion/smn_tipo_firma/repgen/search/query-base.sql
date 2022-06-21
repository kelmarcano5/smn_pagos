select
		smn_pagos.smn_tipo_firma.smn_tipo_firma_id,
	${field}
from
	smn_pagos.smn_tipo_firma
where
		smn_pagos.smn_tipo_firma.smn_tipo_firma_id is not null
	${filter}
	
	
