select
	smn_pagos.smn_autorizador.aut_fecha_registro,
		smn_pagos.smn_autorizador.smn_autorizador_id
	
from
	smn_pagos.smn_autorizador
where
	smn_autorizador_id is not null
	${filter}
order by
		smn_autorizador_id
