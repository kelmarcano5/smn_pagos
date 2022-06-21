select
		smn_pagos.smn_descuento_retencion.smn_descuento_retencion_id,
	${field}
from
	smn_pagos.smn_descuento_retencion
where
		smn_pagos.smn_descuento_retencion.smn_descuento_retencion_id is not null
	${filter}
	
	
