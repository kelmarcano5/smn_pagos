select	
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_solicitud_documento.smn_documento_id) as smn_documento_id_combo,
	(select smn_pagos.smn_rol.rol_tipo  from  smn_pagos.smn_rol where smn_pagos.smn_rol.smn_rol_id is not null  and smn_pagos.smn_rol.smn_rol_id=smn_pagos.smn_solicitud_documento.smn_rol_id) as smn_rol_id_combo,
	(select smn_base.smn_entidades_financieras.efi_codigo ||'-'|| smn_base.smn_entidades_financieras.efi_nombre from  smn_base.smn_entidades_financieras where smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null  and smn_base.smn_entidades_financieras.smn_entidades_financieras_id=smn_pagos.smn_solicitud_documento.smn_entidad_bancaria_rf) as smn_entidad_bancaria_rf_combo,
	(select smn_base.smn_cuentas_bancarias.cba_nro_cuenta from  smn_base.smn_cuentas_bancarias where smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id is not null  and smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id=smn_pagos.smn_solicitud_documento.smn_cuenta_bancaria_rf) as smn_cuenta_bancaria_rf_combo,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_solicitud_documento.smn_usuario_id) as smn_usuario_id_combo,
	(select smn_pagos.smn_formato_impresion.foi_codigo from  smn_pagos.smn_formato_impresion where smn_pagos.smn_formato_impresion.smn_clave_formato_impresion_id is not null  and smn_pagos.smn_formato_impresion.smn_clave_formato_impresion_id=smn_pagos.smn_solicitud_documento.smn_clave_formato_impresion_id) as smn_clave_formato_impresion_id_combo,
	case
		when smn_pagos.smn_solicitud_documento.sdp_estatus_solicitud='AC' then '${lbl:b_activated}'
		when smn_pagos.smn_solicitud_documento.sdp_estatus_solicitud='RE' then '${lbl:b_received}'
	end as sdp_estatus_solicitud_combo,
	smn_pagos.smn_solicitud_documento.*
from
	smn_pagos.smn_documento,
	smn_pagos.smn_rol,
	smn_pagos.smn_formato_impresion,
	smn_pagos.smn_solicitud_documento 
where
	smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_solicitud_documento.smn_documento_id and
	smn_pagos.smn_rol.smn_rol_id=smn_pagos.smn_solicitud_documento.smn_rol_id and
	smn_pagos.smn_formato_impresion.smn_clave_formato_impresion_id=smn_pagos.smn_solicitud_documento.smn_clave_formato_impresion_id 
 and 
	smn_solicitud_documento_id = ${fld:id}
