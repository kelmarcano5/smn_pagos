select
		smn_pagos.smn_firmas_cuentas.fcb_codigo
from
		smn_pagos.smn_firmas_cuentas
where
		upper(smn_pagos.smn_firmas_cuentas.fcb_codigo) = upper(${fld:fcb_codigo})
