select 
	(SELECT smn_base.smn_entidades.ent_descripcion_corta FROM smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id=${fld:smn_entidades_rf} limit 1) as entidad,
	(SELECT smn_base.smn_sucursales.suc_nombre FROM smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id=${fld:smn_sucursales_rf} limit 1) as sucursal,
	(SELECT smn_base.smn_auxiliar.aux_descripcion FROM smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id=${fld:smn_auxiliar_rf} limit 1) as beneficiario,
 	SUM(smn_pagos.smn_orden_pago.opa_monto_factura_ml) as monto_ml,
 	SUM(smn_pagos.smn_orden_pago.opa_monto_factura_ma) as monto_ma
from smn_pagos.smn_orden_pago 
where
	smn_pagos.smn_orden_pago.smn_orden_pago_id is not null 
	and smn_pagos.smn_orden_pago.smn_orden_pago_id=${fld:id}

