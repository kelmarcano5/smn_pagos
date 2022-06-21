select
		smn_pagos.smn_tipo_firma.tfi_codigo,
	smn_pagos.smn_tipo_firma.tfi_descripcion,
	smn_pagos.smn_tipo_firma.tfi_estatus,
	smn_pagos.smn_tipo_firma.tfi_vigencia,
	smn_pagos.smn_tipo_firma.tfi_fecha_registro
from
	smn_pagos.smn_tipo_firma 
where
	smn_pagos.smn_tipo_firma.smn_tipo_firma_id = ${fld:id}
