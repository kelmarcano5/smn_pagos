select
	smn_cont_financiera.smn_tipo_comprobante.tic_nombre,
	case
	when smn_pagos.smn_lote_pago.lpa_estatus='RE' then '${lbl:b_re} '
	when smn_pagos.smn_lote_pago.lpa_estatus=' AP' then '${lbl:b_ap} '
	when smn_pagos.smn_lote_pago.lpa_estatus=' EM' then '${lbl:b_em} '
	when smn_pagos.smn_lote_pago.lpa_estatus=' CE' then '${lbl:b_ce}'
	end as lpa_estatus,
	smn_pagos.smn_lote_pago.*
from
	smn_pagos.smn_lote_pago
	left outer join smn_cont_financiera.smn_tipo_comprobante on smn_cont_financiera.smn_tipo_comprobante.smn_tipo_comprobante_id = smn_pagos.smn_lote_pago.lpa_tipo_comprobante_contable_id
where
	smn_lote_pago_id = ${fld:id}
