select
	(select smn_base.smn_cuentas_bancarias.cba_codigo from  smn_base.smn_cuentas_bancarias where smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id is not null  and smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id=smn_pagos.smn_tipo_firma.smn_cuentas_bancarias_rf) as smn_cuentas_bancarias_rf_combo,
	case
		when smn_pagos.smn_firmas_cuentas.fcb_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_firmas_cuentas.fcb_estatus='IN' then '${lbl:b_inactive}'
	end as fcb_estatus_combo,
	smn_pagos.smn_firmas_cuentas.*
from 
	smn_pagos.smn_firmas_cuentas,
	smn_pagos.smn_tipo_firma
where
	smn_pagos.smn_firmas_cuentas.smn_tipo_firma_id=smn_pagos.smn_tipo_firma.smn_tipo_firma_id and 
	smn_pagos.smn_tipo_firma.smn_tipo_firma_id=${fld:id}
