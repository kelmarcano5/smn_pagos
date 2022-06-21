select
	case
	when smn_pagos.smn_rechazo.rec_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_rechazo.rec_estatus='IN' then '${lbl:b_inactive}'
	end as rec_estatus_combo,
	smn_pagos.smn_rechazo.rec_codigo,
	smn_pagos.smn_rechazo.rec_descripcion,
	smn_pagos.smn_rechazo.rec_estatus,
	smn_pagos.smn_rechazo.rec_fecha_registro,
		smn_pagos.smn_rechazo.smn_rechazo_id
	
from
	smn_pagos.smn_rechazo
where
	smn_rechazo_id is not null
	${filter}
order by
		smn_rechazo_id
