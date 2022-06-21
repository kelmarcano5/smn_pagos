select
		smn_pagos.smn_orden_pago.smn_orden_pago_id,
	${field}
from
	smn_pagos.smn_orden_pago
where
		smn_pagos.smn_orden_pago.smn_orden_pago_id is not null
	${filter}
	
	
