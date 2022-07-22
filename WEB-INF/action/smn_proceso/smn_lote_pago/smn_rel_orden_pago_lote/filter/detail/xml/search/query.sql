select
	case
	when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='RE' then '${lbl:b_re} '
	when smn_pagos.smn_rel_orden_pago_lote.eol_estatus=' AP' then '${lbl:b_ap} '
	when smn_pagos.smn_rel_orden_pago_lote.eol_estatus=' EM' then '${lbl:b_em} '
	when smn_pagos.smn_rel_orden_pago_lote.eol_estatus=' CE' then '${lbl:b_ce}'
	end as eol_estatus,
	smn_pagos.smn_rel_orden_pago_lote.*
from
	smn_pagos.smn_rel_orden_pago_lote
where
	smn_rel_orden_pago_lote_id = ${fld:id}
