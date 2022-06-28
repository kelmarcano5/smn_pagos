select
		smn_pagos.smn_rel_orden_pago_lote.smn_orden_pago_id,
	smn_pagos.smn_rel_orden_pago_lote.smn_lote_pago_id,
	smn_pagos.smn_rel_orden_pago_lote.smn_documento_id,
	smn_pagos.smn_rel_orden_pago_lote.eol_numero_pago,
	smn_pagos.smn_rel_orden_pago_lote.eol_fecha_pago,
	smn_pagos.smn_rel_orden_pago_lote.eol_referencia_bancaria,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_pago_ml,
	smn_pagos.smn_rel_orden_pago_lote.smn_moneda_rf,
	smn_pagos.smn_rel_orden_pago_lote.smn_tasa_cambio_rf,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_pago_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_estatus,
	smn_pagos.smn_rel_orden_pago_lote.eol_fecha_registro
from
	smn_pagos.smn_rel_orden_pago_lote 
where
	smn_pagos.smn_rel_orden_pago_lote.smn_rel_orden_pago_lote_id = ${fld:id}
