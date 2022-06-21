select	
	smn_pagos.smn_solicitud_documento.smn_solicitud_documento_id, 
	smn_pagos.smn_solicitud_documento.sdp_estatus_solicitud as sdp_estatus_solicitud_pl0,
	(select smn_base.smn_cuentas_bancarias.cba_nro_cuenta from  smn_base.smn_cuentas_bancarias where smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id is not null  and smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id=smn_pagos.smn_control_documento.smn_cuenta_bancaria_rf) as smn_cuenta_bancaria_rf_combo,
	case
		when smn_pagos.smn_control_documento.dpd_estatus='AC' then '${lbl:b_activated}'
		when smn_pagos.smn_control_documento.dpd_estatus='US' then '${lbl:b_used}'
		when smn_pagos.smn_control_documento.dpd_estatus='AN' then '${lbl:b_canceled}'
	end as dpd_estatus_combo,
	smn_pagos.smn_control_documento.*
from
	smn_pagos.smn_solicitud_documento,
	smn_pagos.smn_control_documento 
where
	smn_pagos.smn_solicitud_documento.smn_solicitud_documento_id=smn_pagos.smn_control_documento.smn_solicitud_documento_id 
 and 
	smn_control_documento_id = ${fld:id}
