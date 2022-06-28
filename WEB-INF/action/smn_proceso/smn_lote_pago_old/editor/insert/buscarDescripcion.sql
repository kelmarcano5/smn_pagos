select
		smn_pagos.smn_lote_pago.lpa_descripcion_lote
from
		smn_pagos.smn_lote_pago
where
		upper(smn_pagos.smn_lote_pago.lpa_descripcion_lote) = upper(${fld:lpa_descripcion_lote})
