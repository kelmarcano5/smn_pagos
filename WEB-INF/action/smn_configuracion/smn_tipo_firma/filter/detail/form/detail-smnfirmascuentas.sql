select
select
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
