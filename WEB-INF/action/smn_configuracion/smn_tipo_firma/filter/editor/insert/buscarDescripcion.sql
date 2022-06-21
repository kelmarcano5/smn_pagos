select
		smn_pagos.smn_tipo_firma.tfi_descripcion
from
		smn_pagos.smn_tipo_firma
where
		upper(smn_pagos.smn_tipo_firma.tfi_descripcion) = upper(${fld:tfi_descripcion})
