select
	case
	when smn_pagos.smn_formato_impresion.foi_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_formato_impresion.foi_estatus='IN' then '${lbl:b_inactive}'
	end as foi_estatus_combo,
	smn_pagos.smn_formato_impresion.*
from
	smn_pagos.smn_formato_impresion
where
	smn_clave_formato_impresion_id = ${fld:id}
