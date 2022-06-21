select 
    case
        when SUM(smn_pagos.smn_orden_pago.opa_saldo_factura_ml) is null then 0 else SUM(smn_pagos.smn_orden_pago.opa_monto_factura_ml)
    end as monto_ml_t,
    case
        when SUM(smn_pagos.smn_orden_pago.opa_saldo_factura_ma) is null then 0 else SUM(smn_pagos.smn_orden_pago.opa_monto_factura_ma)
    end as monto_ma_t
FROM
	smn_pagos.smn_orden_pago 
	INNER JOIN smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_pagos.smn_orden_pago.smn_auxiliar_rf
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_pagos.smn_orden_pago.smn_entidades_rf
	left join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_pagos.smn_orden_pago.smn_sucursales_rf
where
    smn_pagos.smn_orden_pago.smn_orden_pago_id is not null  
    ${filter}
