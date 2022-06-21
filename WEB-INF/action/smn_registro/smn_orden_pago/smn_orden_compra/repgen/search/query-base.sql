select
		smn_pagos.smn_orden_compra.smn_orden_compra_id,
	${field}
from
	smn_pagos.smn_orden_compra
where
		smn_pagos.smn_orden_compra.smn_orden_compra_id is not null
	${filter}
	
	
