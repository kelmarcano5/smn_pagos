select
		smn_pagos.smn_autorizador.smn_entidades_rf,
	smn_pagos.smn_autorizador.smn_sucursales_rf,
	smn_pagos.smn_autorizador.aut_estatus,
	smn_pagos.smn_autorizador.aut_vigencia,
	smn_pagos.smn_autorizador.aut_fecha_registro
from
	smn_pagos.smn_autorizador 
where
	smn_pagos.smn_autorizador.smn_autorizador_id = ${fld:id}
