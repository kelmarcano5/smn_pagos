select
		smn_pagos.smn_impuestos_retenciones.smn_codigo_impuesto_rf
from
		smn_pagos.smn_impuestos_retenciones
where
		upper(smn_pagos.smn_impuestos_retenciones.smn_codigo_impuesto_rf) = upper(${fld:smn_codigo_impuesto_rf})
