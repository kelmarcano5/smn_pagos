select
		smn_pagos.smn_formato_impresion.foi_codigo
from
		smn_pagos.smn_formato_impresion
where
		upper(smn_pagos.smn_formato_impresion.foi_codigo) = upper(${fld:foi_codigo})
