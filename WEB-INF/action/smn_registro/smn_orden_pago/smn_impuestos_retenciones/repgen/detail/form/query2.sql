select
		smn_pagos.smn_impuestos_retenciones.smn_clave_imp_ret_id,
	smn_pagos.smn_impuestos_retenciones.smn_orden_pago_id,
	smn_pagos.smn_impuestos_retenciones.smn_codigo_impuesto_rf,
	smn_pagos.smn_impuestos_retenciones.iop_base_imponible,
	smn_pagos.smn_impuestos_retenciones.iop_base_excenta,
	smn_pagos.smn_impuestos_retenciones.iop_porcentaje_retencion,
	smn_pagos.smn_impuestos_retenciones.iop_monto_impuesto,
	smn_pagos.smn_impuestos_retenciones.iop_fecha_registro
from
	smn_pagos.smn_impuestos_retenciones 
where
	smn_pagos.smn_impuestos_retenciones.smn_impuestos_retenciones_id = ${fld:id}
