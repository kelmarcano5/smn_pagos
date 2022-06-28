select
	smn_cont_financiera.smn_tipo_comprobante.tic_nombre,
	${field}
from
	smn_pagos.smn_lote_pago
	left outer join smn_cont_financiera.smn_tipo_comprobante on smn_cont_financiera.smn_tipo_comprobante.smn_tipo_comprobante_id = smn_pagos.smn_lote_pago.lpa_tipo_comprobante_contable_id
where
		smn_pagos.smn_lote_pago.smn_lote_pago_id = ${fld:id}
	
