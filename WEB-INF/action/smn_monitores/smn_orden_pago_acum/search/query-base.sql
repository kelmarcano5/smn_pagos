SELECT
smn_base.smn_auxiliar.aux_descripcion as beneficiario,
smn_base.smn_entidades.ent_descripcion_corta as entidad,
smn_base.smn_sucursales.suc_nombre as sucursal,
Sum(smn_pagos.smn_orden_pago.opa_saldo_factura_ml) as monto_ml,
Sum(smn_pagos.smn_orden_pago.opa_saldo_factura_ma) as monto_ma,
smn_pagos.smn_orden_pago.opa_estatus_financiero,
smn_pagos.smn_orden_pago.opa_fecha_recepcion
FROM
smn_pagos.smn_orden_pago 
INNER JOIN smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_pagos.smn_orden_pago.smn_auxiliar_rf
inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_pagos.smn_orden_pago.smn_entidades_rf
left join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_pagos.smn_orden_pago.smn_sucursales_rf
WHERE
	smn_pagos.smn_orden_pago.smn_orden_pago_id is not null 	and smn_pagos.smn_orden_pago.opa_estatus_financiero='PE' 
	${filter}
GROUP BY
smn_pagos.smn_orden_pago.smn_entidades_rf,
smn_pagos.smn_orden_pago.smn_sucursales_rf,
smn_pagos.smn_orden_pago.opa_estatus_financiero,
smn_pagos.smn_orden_pago.opa_fecha_recepcion,
smn_pagos.smn_orden_pago.smn_auxiliar_rf,
smn_base.smn_auxiliar.aux_descripcion,
smn_base.smn_entidades.ent_descripcion_corta,
smn_base.smn_sucursales.suc_nombre
