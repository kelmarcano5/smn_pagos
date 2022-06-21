select
		smn_pagos.smn_rechazo.smn_rechazo_id,
	case
	when smn_pagos.smn_rechazo.rec_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_rechazo.rec_estatus='IN' then '${lbl:b_inactive}'
	end as rec_estatus_combo,
	smn_pagos.smn_rechazo.rec_codigo,
	smn_pagos.smn_rechazo.rec_descripcion,
	smn_pagos.smn_rechazo.rec_estatus,
	smn_pagos.smn_rechazo.rec_fecha_registro
	
from
	smn_pagos.smn_rechazo
