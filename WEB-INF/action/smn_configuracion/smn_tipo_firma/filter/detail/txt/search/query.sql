select
	case
		when smn_pagos.smn_tipo_firma.tfi_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_tipo_firma.tfi_estatus='IN' then '${lbl:b_inactive}'
	end as tfi_estatus_combo,
	smn_pagos.smn_tipo_firma.*
from 
	smn_pagos.smn_tipo_firma
where
	smn_tipo_firma_id = ${fld:id}
