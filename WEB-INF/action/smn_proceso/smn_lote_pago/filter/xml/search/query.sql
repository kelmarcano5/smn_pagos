select
	smn_cont_financiera.smn_tipo_comprobante.tic_nombre,
		smn_pagos.smn_lote_pago.smn_lote_pago_id,
	case
	when smn_pagos.smn_lote_pago.lpa_estatus='RE' then '${lbl:b_re}'
	when smn_pagos.smn_lote_pago.lpa_estatus='AP' then '${lbl:b_ap}'
	when smn_pagos.smn_lote_pago.lpa_estatus='EM' then '${lbl:b_em}'
	when smn_pagos.smn_lote_pago.lpa_estatus='CE' then '${lbl:b_ce}'
	end as lpa_estatus_combo,
	smn_pagos.smn_lote_pago.smn_entidad_financiera_rf,
	smn_pagos.smn_lote_pago.smn_cuenta_bancaria_rf,
	smn_pagos.smn_lote_pago.smn_documento_id,
	smn_pagos.smn_lote_pago.lpa_numero_lote,
	smn_pagos.smn_lote_pago.lpa_descripcion_lote,
	smn_pagos.smn_lote_pago.lpa_fecha_lote,
	smn_pagos.smn_lote_pago.smn_forma_pago_rf,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ma,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ml,
	smn_pagos.smn_lote_pago.lpa_estatus,
	smn_pagos.smn_lote_pago.lpa_fecha_registro
	
from
	smn_pagos.smn_lote_pago
	left outer join smn_cont_financiera.smn_tipo_comprobante on smn_cont_financiera.smn_tipo_comprobante.smn_tipo_comprobante_id = smn_pagos.smn_lote_pago.lpa_tipo_comprobante_contable_id
