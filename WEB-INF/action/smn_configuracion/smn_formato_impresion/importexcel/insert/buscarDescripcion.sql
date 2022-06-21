select
		smn_pagos.smn_formato_impresion.foi_descripcion
from
		smn_pagos.smn_formato_impresion
where
		upper(smn_pagos.smn_formato_impresion.foi_descripcion) = upper(${fld:foi_descripcion})
