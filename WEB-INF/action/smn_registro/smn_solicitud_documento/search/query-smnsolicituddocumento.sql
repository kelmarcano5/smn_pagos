select	
	smn_pagos.smn_solicitud_documento.smn_solicitud_documento_id,
	smn_pagos.smn_documento.smn_documento_id, 
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion  from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_solicitud_documento.smn_documento_id) as smn_documento_id_combo,
	(select smn_base.smn_entidades_financieras.efi_codigo ||'-'|| smn_base.smn_entidades_financieras.efi_nombre from  smn_base.smn_entidades_financieras where smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null  and smn_base.smn_entidades_financieras.smn_entidades_financieras_id=smn_pagos.smn_solicitud_documento.smn_entidad_bancaria_rf) as smn_entidad_bancaria_rf_combo,
	(select smn_base.smn_cuentas_bancarias.cba_nro_cuenta from  smn_base.smn_cuentas_bancarias where smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id is not null  and smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id=smn_pagos.smn_solicitud_documento.smn_cuenta_bancaria_rf) as smn_cuenta_bancaria_rf_combo,
	smn_pagos.smn_solicitud_documento.smn_documento_id,
	smn_pagos.smn_solicitud_documento.sdp_numero_solicitud_pago,
	smn_pagos.smn_solicitud_documento.smn_entidad_bancaria_rf,
	smn_pagos.smn_solicitud_documento.smn_cuenta_bancaria_rf,
	smn_pagos.smn_solicitud_documento.sdp_fecha_solicitud,
	smn_pagos.smn_solicitud_documento.sdp_cantidad_documentos,
	smn_pagos.smn_solicitud_documento.sdp_numero_inicial,
	smn_pagos.smn_solicitud_documento.sdp_numero_final,
	smn_pagos.smn_solicitud_documento.sdp_fecha_registro,
	smn_pagos.smn_solicitud_documento.sdp_estatus_solicitud

from
	smn_pagos.smn_documento,
	smn_pagos.smn_solicitud_documento 
where
	smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_solicitud_documento.smn_documento_id 

