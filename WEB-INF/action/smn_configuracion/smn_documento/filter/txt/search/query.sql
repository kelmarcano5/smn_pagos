select
	smn_pagos.smn_documento.smn_documento_id,
	(select smn_base.smn_modulos.mod_codigo from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_pagos.smn_documento.smn_modulo_origen_rf) as smn_modulo_origen_rf_combo,
	(select smn_base.smn_entidades.ent_codigo from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_pagos.smn_documento.smn_entidades_rf) as smn_entidades_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo from  smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_pagos.smn_documento.smn_sucursales_rf) as smn_sucursales_rf_combo,
	smn_pagos.smn_documento.doc_codigo,
	smn_pagos.smn_documento.doc_descripcion,
	smn_pagos.smn_documento.smn_modulo_origen_rf,
	smn_pagos.smn_documento.smn_entidades_rf,
	smn_pagos.smn_documento.smn_sucursales_rf,
	smn_pagos.smn_documento.doc_fecha_registro

from
	smn_pagos.smn_documento
