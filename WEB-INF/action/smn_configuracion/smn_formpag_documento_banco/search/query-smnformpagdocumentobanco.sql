select
	smn_pagos.smn_formpag_documento_banco.smn_formpag_documento_banco_id, 
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_formpag_documento_banco.smn_documento_id) as smn_documento_id_combo,
	(select smn_base.smn_formas_pago.fop_codigo ||'-'|| smn_base.smn_formas_pago.fop_descripcion from  smn_base.smn_formas_pago where smn_base.smn_formas_pago.smn_formas_pago_id is not null  and smn_base.smn_formas_pago.smn_formas_pago_id=smn_pagos.smn_formpag_documento_banco.smn_forma_pago_rf) as smn_forma_pago_rf_combo,
	(select smn_base.smn_entidades_financieras.efi_codigo ||'-'|| smn_base.smn_entidades_financieras.efi_nombre from  smn_base.smn_entidades_financieras where smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null  and smn_base.smn_entidades_financieras.smn_entidades_financieras_id=smn_pagos.smn_formpag_documento_banco.smn_entidad_financiera_rf) as smn_entidad_financiera_rf_combo,
	case
		when smn_pagos.smn_formpag_documento_banco.fdb_genera_transaccion='SI' then '${lbl:b_yes}'
		when smn_pagos.smn_formpag_documento_banco.fdb_genera_transaccion='NO' then '${lbl:b_no}'
	end as fdb_genera_transaccion_combo,
	case
		when smn_pagos.smn_formpag_documento_banco.fdb_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_formpag_documento_banco.fdb_estatus='IN' then '${lbl:b_inactive}'
	end as fdb_estatus_combo,
	smn_pagos.smn_formpag_documento_banco.smn_documento_id,
	smn_pagos.smn_formpag_documento_banco.smn_forma_pago_rf,
	smn_pagos.smn_formpag_documento_banco.smn_entidad_financiera_rf,
	smn_pagos.smn_formpag_documento_banco.fdb_genera_transaccion,
	smn_pagos.smn_formpag_documento_banco.fdb_estatus,
	smn_pagos.smn_formpag_documento_banco.fdb_fecha_registro

from
	smn_pagos.smn_documento,
	smn_pagos.smn_formpag_documento_banco 
where
	smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_formpag_documento_banco.smn_documento_id 

