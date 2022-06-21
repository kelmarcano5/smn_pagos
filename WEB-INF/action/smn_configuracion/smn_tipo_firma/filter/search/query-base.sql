select
	case
	when smn_pagos.smn_tipo_firma.tfi_estatus='AC' then '${lbl:b_active}'
	when smn_pagos.smn_tipo_firma.tfi_estatus='IN' then '${lbl:b_inactive}'
	end as tfi_estatus_combo,
	smn_pagos.smn_tipo_firma.tfi_codigo,
	smn_pagos.smn_tipo_firma.tfi_descripcion,
	smn_pagos.smn_tipo_firma.tfi_estatus,
	smn_pagos.smn_tipo_firma.tfi_fecha_registro,
		smn_pagos.smn_tipo_firma.smn_tipo_firma_id
	
from
	smn_pagos.smn_tipo_firma
where
	smn_tipo_firma_id is not null
	${filter}
order by
		smn_tipo_firma_id
