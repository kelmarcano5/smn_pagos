SELECT 
smn_pagos.smn_orden_pago.smn_orden_pago_id as smn_orden_pago_id,
(
	CASE WHEN smn_pagos.smn_orden_pago.opa_saldo_factura_ml is NULL 
		THEN 0 
		ELSE smn_pagos.smn_orden_pago.opa_saldo_factura_ml
	END
) as opa_saldo_factura_ml,
(
	CASE WHEN smn_pagos.smn_orden_pago.opa_saldo_factura_ma is NULL 
		THEN 0 
		ELSE smn_pagos.smn_orden_pago.opa_saldo_factura_ma
	END
) as opa_saldo_factura_ma,
(
	CASE WHEN smn_pagos.smn_orden_pago.smn_moneda_rf is NULL 
		THEN 0 
		ELSE smn_pagos.smn_orden_pago.smn_moneda_rf
	END
) as smn_moneda_rf,
(
	CASE WHEN smn_pagos.smn_orden_pago.smn_tasa_cambio_rf is NULL 
		THEN 0 
		ELSE smn_pagos.smn_orden_pago.smn_tasa_cambio_rf
	END
) as smn_tasa_cambio_rf
from smn_pagos.smn_orden_pago