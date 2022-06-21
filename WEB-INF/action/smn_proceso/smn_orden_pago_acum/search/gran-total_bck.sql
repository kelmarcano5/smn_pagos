select 
    case
        when SUM(smn_pagos.smn_orden_pago.opa_saldo_factura_ml) is null then 0 else SUM(smn_pagos.smn_orden_pago.opa_monto_factura_ml)
    end as monto_ml_t,
    case
        when SUM(smn_pagos.smn_orden_pago.opa_saldo_factura_ma) is null then 0 else SUM(smn_pagos.smn_orden_pago.opa_monto_factura_ma)
    end as monto_ma_t
from 
    smn_pagos.smn_orden_pago
where
    smn_pagos.smn_orden_pago.smn_orden_pago_id is not null  
    ${filter}
