SELECT smn_pagos.smn_orden_pago.smn_orden_pago_id as id,
smn_pagos.smn_orden_pago.opa_numero_documento as numdoc,
smn_pagos.smn_orden_pago.opa_saldo_factura_ml as mtoml,
smn_pagos.smn_orden_pago.opa_saldo_factura_ma as mtoma,
smn_pagos.smn_orden_pago.smn_moneda_rf as smn_moneda_rf,
smn_pagos.smn_orden_pago.smn_tasa_cambio_rf as smn_tasa_cambio_rf
from smn_pagos.smn_orden_pago
where smn_pagos.smn_orden_pago.smn_entidades_rf = ${fld:entidad_id}
and smn_pagos.smn_orden_pago.smn_sucursales_rf = ${fld:sucursal_id}
