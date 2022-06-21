select	
	smn_pagos.smn_orden_pago.smn_orden_pago_id, 
	smn_pagos.smn_orden_pago.opa_descripcion as opa_descripcion_pl0,
	(select smn_base.smn_clase_auxiliar.cla_codigo ||'-'|| smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf) as smn_clase_auxiliar_rf_combo,
	(select smn_base.smn_auxiliar.aux_nombres from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_descuento_retencion.smn_auxiliar_rf) as smn_auxiliar_rf_combo,
	(select smn_base.smn_descuento.dct_codigo ||'-'|| smn_base.smn_descuento.dct_nombre from  smn_base.smn_descuento where smn_base.smn_descuento.smn_descuento_id is not null  and smn_base.smn_descuento.smn_descuento_id=smn_pagos.smn_descuento_retencion.smn_descuento_retencion_rf) as smn_descuento_retencion_rf_combo,
	smn_pagos.smn_descuento_retencion.*
from
	smn_pagos.smn_orden_pago,
	smn_pagos.smn_descuento_retencion 
where
	smn_pagos.smn_orden_pago.smn_orden_pago_id=smn_pagos.smn_descuento_retencion.smn_orden_pago_id 
 and 
	smn_descuento_retencion_op_id = ${fld:id}
