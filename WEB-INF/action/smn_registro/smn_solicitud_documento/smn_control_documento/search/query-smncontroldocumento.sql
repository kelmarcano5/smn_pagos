select
		smn_pagos.smn_control_documento.smn_control_documento_id,
	case
	when smn_pagos.smn_control_documento.dpd_estatus='AC' then '${lbl:b_activated}'
	when smn_pagos.smn_control_documento.dpd_estatus='US' then '${lbl:b_used}'
	when smn_pagos.smn_control_documento.dpd_estatus='AN' then '${lbl:b_canceled}'
	end as dpd_estatus_combo,
	smn_pagos.smn_control_documento.dpd_numero_documento,
	smn_pagos.smn_control_documento.dpd_estatus,
	smn_pagos.smn_control_documento.dpd_fecha_registro
	
from
	smn_pagos.smn_control_documento
where
	smn_pagos.smn_control_documento.smn_solicitud_documento_id=${fld:id_solicitud_documento}
