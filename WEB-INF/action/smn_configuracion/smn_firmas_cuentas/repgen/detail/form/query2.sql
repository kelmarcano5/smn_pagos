select
		smn_pagos.smn_firmas_cuentas.fcb_codigo,
	smn_pagos.smn_firmas_cuentas.fcb_descripcion,
	smn_pagos.smn_firmas_cuentas.smn_cuentas_bancarias_rf,
	smn_pagos.smn_firmas_cuentas.fcb_cantidad,
	smn_pagos.smn_firmas_cuentas.smn_tipo_firma_id,
	smn_pagos.smn_firmas_cuentas.fcb_estatus,
	smn_pagos.smn_firmas_cuentas.fcb_vigencia,
	smn_pagos.smn_firmas_cuentas.fcb_fecha_registro
from
	smn_pagos.smn_firmas_cuentas 
where
	smn_pagos.smn_firmas_cuentas.smn_firmas_cuentas_id = ${fld:id}
