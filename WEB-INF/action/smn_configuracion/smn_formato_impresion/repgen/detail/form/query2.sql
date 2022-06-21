select
		smn_pagos.smn_formato_impresion.smn_clave_formato_impresion_id,
	smn_pagos.smn_formato_impresion.foi_codigo,
	smn_pagos.smn_formato_impresion.foi_descripcion,
	smn_pagos.smn_formato_impresion.foi_texto,
	smn_pagos.smn_formato_impresion.foi_estatus,
	smn_pagos.smn_formato_impresion.foi_vigencia,
	smn_pagos.smn_formato_impresion.foi_fecha_registro
from
	smn_pagos.smn_formato_impresion 
where
	smn_pagos.smn_formato_impresion.smn_formato_impresion_id = ${fld:id}
