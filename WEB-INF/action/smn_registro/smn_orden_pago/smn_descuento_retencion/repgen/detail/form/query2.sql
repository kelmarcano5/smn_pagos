select
		smn_pagos.smn_descuento_retencion.smn_descuento_retencion_op_id,
	smn_pagos.smn_descuento_retencion.smn_orden_pago_id,
	smn_pagos.smn_descuento_retencion.smn_clase_auxiliar_rf,
	smn_pagos.smn_descuento_retencion.smn_auxiliar_rf,
	smn_pagos.smn_descuento_retencion.smn_descuento_retencion_rf,
	smn_pagos.smn_descuento_retencion.dro_monto_base,
	smn_pagos.smn_descuento_retencion.dro_porcentaje,
	smn_pagos.smn_descuento_retencion.dro_monto_descuento,
	smn_pagos.smn_descuento_retencion.dro_fecha_registro
from
	smn_pagos.smn_descuento_retencion 
where
	smn_pagos.smn_descuento_retencion.smn_descuento_retencion_id = ${fld:id}
