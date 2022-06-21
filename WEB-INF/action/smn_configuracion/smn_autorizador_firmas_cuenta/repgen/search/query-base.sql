select
		smn_pagos.smn_autorizador_firmas_cuenta.smn_autorizador_firmas_cuenta_id,
	${field}
from
	smn_pagos.smn_autorizador_firmas_cuenta
where
		smn_pagos.smn_autorizador_firmas_cuenta.smn_autorizador_firmas_cuenta_id is not null
	${filter}
	
	
