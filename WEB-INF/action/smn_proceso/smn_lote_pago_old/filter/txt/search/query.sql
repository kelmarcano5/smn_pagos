select
		smn_pagos.smn_lote_pago.smn_lote_pago_id,
select
		smn_pagos.smn_lote_pago.smn_lote_pago_id,
select
		smn_pagos.smn_lote_pago.smn_lote_pago_id,
select
		smn_pagos.smn_lote_pago.smn_lote_pago_id,
select
		smn_pagos.smn_lote_pago.smn_lote_pago_id,
	case
	when smn_pagos.smn_lote_pago.smn_estatus_documento='RE' then '${lbl:b_re} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='AP' then '${lbl:b_ap} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='EM' then '${lbl:b_em} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='CE' then '${lbl:b_ce}'
	end as smn_estatus_documento,
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
