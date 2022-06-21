select
	smn_pagos.smn_canal_pago.smn_canal_pago_id,
	case
	when smn_pagos.smn_canal_pago.cdp_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_canal_pago.cdp_estatus='IN' then '${lbl:b_inactive}'
	end as cdp_estatus_combo,
	smn_pagos.smn_canal_pago.cdp_codigo,
	smn_pagos.smn_canal_pago.cdp_descripcion,
	smn_pagos.smn_canal_pago.cdp_estatus,
	smn_pagos.smn_canal_pago.cdp_fecha_registro
	
from
	smn_pagos.smn_canal_pago
