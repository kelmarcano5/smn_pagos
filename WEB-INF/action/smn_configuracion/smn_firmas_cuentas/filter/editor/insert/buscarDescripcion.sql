select
		smn_pagos.smn_firmas_cuentas.fcb_descripcion
from
		smn_pagos.smn_firmas_cuentas
where
		upper(smn_pagos.smn_firmas_cuentas.fcb_descripcion) = upper(${fld:fcb_descripcion})
