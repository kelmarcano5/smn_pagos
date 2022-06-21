select
	case
	when smn_pagos.smn_rechazo.rec_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_rechazo.rec_estatus='IN' then '${lbl:b_inactive}'
	end as rec_estatus_combo,
	smn_pagos.smn_rechazo.*
from
	smn_pagos.smn_rechazo
where
	smn_rechazo_id = ${fld:id}
