select
	smn_pagos.smn_descuento_retencion.smn_descuento_retencion_op_id,
	smn_pagos.smn_orden_pago.smn_orden_pago_id, 
	smn_pagos.smn_orden_pago.opa_descripcion as opa_descripcion_pl0,
	(select smn_base.smn_auxiliar.aux_nombres from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_descuento_retencion.smn_auxiliar_rf) as smn_auxiliar_rf_combo,
	(select smn_base.smn_descuento.dct_codigo ||'-'|| smn_base.smn_descuento.dct_nombre from  smn_base.smn_descuento where smn_base.smn_descuento.smn_descuento_id is not null  and smn_base.smn_descuento.smn_descuento_id=smn_pagos.smn_descuento_retencion.smn_descuento_retencion_rf) as smn_descuento_retencion_rf_combo,
	smn_pagos.smn_descuento_retencion.smn_orden_pago_id,
	smn_pagos.smn_descuento_retencion.smn_auxiliar_rf,
	smn_pagos.smn_descuento_retencion.smn_descuento_retencion_rf,
	smn_pagos.smn_descuento_retencion.dro_monto_base,
	smn_pagos.smn_descuento_retencion.dro_porcentaje,
	smn_pagos.smn_descuento_retencion.dro_monto_descuento,
	smn_pagos.smn_descuento_retencion.dro_fecha_registro

from
	smn_pagos.smn_orden_pago,
	smn_pagos.smn_descuento_retencion 
where
	smn_pagos.smn_descuento_retencion.smn_orden_pago_id = ${fld:id_orden_pago} and
	smn_pagos.smn_descuento_retencion.smn_orden_pago_id=smn_pagos.smn_orden_pago.smn_orden_pago_id

