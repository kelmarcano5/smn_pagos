select
		smn_pagos.smn_canal_pago.cdp_descripcion
from
		smn_pagos.smn_canal_pago
where
		upper(smn_pagos.smn_canal_pago.cdp_descripcion) = upper(${fld:cdp_descripcion})
