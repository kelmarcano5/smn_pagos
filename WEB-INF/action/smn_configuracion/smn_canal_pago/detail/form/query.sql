select
	case
	when smn_pagos.smn_canal_pago.cdp_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_canal_pago.cdp_estatus='IN' then '${lbl:b_inactive}'
	end as cdp_estatus_combo,
	smn_pagos.smn_canal_pago.*
from
	smn_pagos.smn_canal_pago
where
	smn_canal_pago_id = ${fld:id}
