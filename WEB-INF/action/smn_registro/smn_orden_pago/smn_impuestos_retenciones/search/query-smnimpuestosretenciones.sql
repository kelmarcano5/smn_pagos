select
	smn_pagos.smn_impuestos_retenciones.smn_clave_imp_ret_id,
	smn_pagos.smn_orden_pago.opa_descripcion as opa_descripcion,
	(select smn_base.smn_codigos_impuestos.imp_codigo ||'-'|| smn_base.smn_codigos_impuestos.imp_descripcion from  smn_base.smn_codigos_impuestos where smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id is not null  and smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_pagos.smn_impuestos_retenciones.smn_codigo_impuesto_rf) as smn_codigo_impuesto_rf_combo,
	smn_pagos.smn_impuestos_retenciones.smn_orden_pago_id,
	smn_pagos.smn_impuestos_retenciones.smn_codigo_impuesto_rf,
	smn_pagos.smn_impuestos_retenciones.iop_base_imponible,
	smn_pagos.smn_impuestos_retenciones.iop_monto_impuesto,
	smn_pagos.smn_impuestos_retenciones.iop_fecha_registro

from
	smn_pagos.smn_orden_pago,
	smn_pagos.smn_impuestos_retenciones 
where
	smn_pagos.smn_impuestos_retenciones.smn_orden_pago_id = ${fld:id_orden_pago} AND smn_pagos.smn_impuestos_retenciones.smn_orden_pago_id=smn_pagos.smn_orden_pago.smn_orden_pago_id

