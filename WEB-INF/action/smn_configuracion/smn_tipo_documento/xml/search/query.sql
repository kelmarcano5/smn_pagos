select
	
	smn_pagos.smn_tipo_documento.tdo_codigo,
	smn_pagos.smn_tipo_documento.tdo_descripcion,
	smn_pagos.smn_tipo_documento.tdo_tipo_movimiento,
	smn_pagos.smn_tipo_documento.tdo_estatus,
	smn_pagos.smn_tipo_documento.tdo_vigencia,
	smn_pagos.smn_tipo_documento.tdo_fecha_registro
from 
	smn_pagos.smn_tipo_documento
order by 
	smn_pagos.smn_tipo_documento.smn_tipo_documento_id
