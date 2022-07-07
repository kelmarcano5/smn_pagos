select
		smn_pagos.smn_anticipo.smn_orden_compra_rf,
	smn_pagos.smn_anticipo.smn_entidad_rf,
	smn_pagos.smn_anticipo.smn_sucursal_rf,
	smn_pagos.smn_anticipo.smn_proveedor_rf,
	smn_pagos.smn_anticipo.smn_documento_id,
	smn_pagos.smn_anticipo.ant_numero_documento,
	smn_pagos.smn_anticipo.ant_porcentaje,
	smn_pagos.smn_anticipo.ant_monto_ml,
	smn_pagos.smn_anticipo.smn_moneda_rf,
	smn_pagos.smn_anticipo.smn_tasa_rf,
	smn_pagos.smn_anticipo.ant_monto_ma,
	smn_pagos.smn_anticipo.ant_estatus,
	smn_pagos.smn_anticipo.ant_fecha_registro
from
	smn_pagos.smn_anticipo 
where
	smn_pagos.smn_anticipo.smn_anticipo_id = ${fld:id}
