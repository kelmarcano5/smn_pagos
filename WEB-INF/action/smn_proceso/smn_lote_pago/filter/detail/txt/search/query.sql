select
select
select
select
select
	case
	when smn_pagos.smn_lote_pago.smn_estatus_documento='RE' then '${lbl:b_re} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='AP' then '${lbl:b_ap} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='EM' then '${lbl:b_em} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='CE' then '${lbl:b_ce}'
	end as smn_estatus_documento,
	smn_pagos.smn_lote_pago.*
from
	smn_pagos.smn_lote_pago
where
	smn_lote_pago_id = ${fld:id}
