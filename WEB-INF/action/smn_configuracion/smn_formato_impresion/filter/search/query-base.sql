select
	smn_pagos.smn_formato_impresion.foi_codigo,
	smn_pagos.smn_formato_impresion.foi_descripcion,
	smn_pagos.smn_formato_impresion.foi_texto,
	smn_pagos.smn_formato_impresion.foi_fecha_registro,
	smn_pagos.smn_formato_impresion.smn_clave_formato_impresion_id
	
from
	smn_pagos.smn_formato_impresion
where
	smn_clave_formato_impresion_id is not null
	${filter}
order by
		smn_clave_formato_impresion_id
