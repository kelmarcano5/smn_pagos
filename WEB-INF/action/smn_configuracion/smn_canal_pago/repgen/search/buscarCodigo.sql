select
		smn_pagos.smn_canal_pago.cdp_codigo
from
		smn_pagos.smn_canal_pago
where
		upper(smn_pagos.smn_canal_pago.cdp_codigo) = upper(${fld:cdp_codigo})
