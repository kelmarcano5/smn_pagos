select
		smn_pagos.smn_lote_pago.smn_entidad_financiera_rf,
	smn_pagos.smn_lote_pago.smn_cuenta_bancaria_rf,
	smn_pagos.smn_lote_pago.smn_forma_pago_rf,
	smn_pagos.smn_lote_pago.smn_documento_id,
	smn_pagos.smn_lote_pago.lpa_numero_lote,
	smn_pagos.smn_lote_pago.lpa_descripcion_lote,
	smn_pagos.smn_lote_pago.lpa_fecha_lote,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ml,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ma,
	smn_pagos.smn_lote_pago.smn_estatus_documento,
	smn_pagos.smn_lote_pago.lpa_fecha_registro
from
	smn_pagos.smn_lote_pago 
where
	smn_pagos.smn_lote_pago.smn_lote_pago_id = ${fld:id}
