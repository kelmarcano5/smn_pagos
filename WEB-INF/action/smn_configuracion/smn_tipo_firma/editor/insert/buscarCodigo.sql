select
		smn_pagos.smn_tipo_firma.tfi_codigo
from
		smn_pagos.smn_tipo_firma
where
		upper(smn_pagos.smn_tipo_firma.tfi_codigo) = upper(${fld:tfi_codigo})
