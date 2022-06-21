select	
	smn_pagos.smn_orden_pago.smn_orden_pago_id, 
	smn_pagos.smn_orden_pago.opa_descripcion as opa_descripcion_pl0,
	(select smn_base.smn_codigos_impuestos.imp_codigo ||'-'|| smn_base.smn_codigos_impuestos.imp_descripcion from  smn_base.smn_codigos_impuestos where smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id is not null  and smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_pagos.smn_impuestos_retenciones.smn_codigo_impuesto_rf) as smn_codigo_impuesto_rf_combo,
	smn_pagos.smn_impuestos_retenciones.*
from
	smn_pagos.smn_orden_pago,
	smn_pagos.smn_impuestos_retenciones 
where
	smn_pagos.smn_orden_pago.smn_orden_pago_id=smn_pagos.smn_impuestos_retenciones.smn_orden_pago_id 
 and 
	smn_clave_imp_ret_id = ${fld:id}
