select
	case
	when smn_pagos.smn_tipo_documento.tdo_tipo_movimiento='OP' then '${lbl:b_pay_order}'
	when smn_pagos.smn_tipo_documento.tdo_tipo_movimiento='PA' then '${lbl:b_pay}'
	when smn_pagos.smn_tipo_documento.tdo_tipo_movimiento='AN' then '${lbl:b_advance}'
	when smn_pagos.smn_tipo_documento.tdo_tipo_movimiento='GP' then '${lbl:b_payment_generated}'
	end as tdo_tipo_movimiento_combo,
	case
	when smn_pagos.smn_tipo_documento.tdo_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_tipo_documento.tdo_estatus='IN' then '${lbl:b_inactive}'
	end as tdo_estatus_combo,
	smn_pagos.smn_tipo_documento.*
from
	smn_pagos.smn_tipo_documento
where
	smn_tipo_documento_id = ${fld:id}
