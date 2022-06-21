select
		smn_pagos.smn_control_documento.smn_modulos_id,
	smn_pagos.smn_control_documento.smn_transaccion_general_rf,
	smn_pagos.smn_control_documento.smn_documentos_generales_rf,
	smn_pagos.smn_control_documento.cdc_documento_id,
	smn_pagos.smn_control_documento.smn_paso_id,
	smn_pagos.smn_control_documento.smn_nivel_aprobacion_id,
	smn_pagos.smn_control_documento.smn_rol_id,
	smn_pagos.smn_control_documento.cdc_status_doc,
	smn_pagos.smn_control_documento.cdc_fecha_registro
from
	smn_pagos.smn_control_documento 
where
	smn_pagos.smn_control_documento.smn_control_documento_id = ${fld:id}
