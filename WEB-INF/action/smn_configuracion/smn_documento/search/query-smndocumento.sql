select
	smn_pagos.smn_documento.smn_documento_id,
	(select smn_base.smn_modulos.mod_codigo ||'-'|| smn_base.smn_modulos.mod_nombre from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_pagos.smn_documento.smn_modulo_origen_rf) as smn_modulo_origen_rf_combo,
	smn_pagos.smn_documento.doc_codigo,
	smn_pagos.smn_documento.doc_descripcion,
	smn_pagos.smn_documento.smn_modulo_origen_rf,
	smn_pagos.smn_documento.doc_fecha_registro

from
	smn_pagos.smn_documento
