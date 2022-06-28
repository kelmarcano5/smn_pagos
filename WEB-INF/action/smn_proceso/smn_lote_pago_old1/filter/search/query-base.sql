select	
	(select smn_base.smn_entidades_financieras.efi_codigo ||'-'|| smn_base.smn_entidades_financieras.efi_nombre from  smn_base.smn_entidades_financieras where smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null  and smn_base.smn_entidades_financieras.smn_entidades_financieras_id=smn_pagos.smn_lote_pago.smn_entidad_financiera_rf) as smn_entidad_financiera_rf_combo,
	(select smn_base.smn_cuentas_bancarias.cba_codigo ||'-'|| smn_base.smn_cuentas_bancarias.cba_nombre from  smn_base.smn_cuentas_bancarias where smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id is not null  and smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id=smn_pagos.smn_lote_pago.smn_cuenta_bancaria_rf) as smn_cuenta_bancaria_rf_combo,
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_lote_pago.smn_documento_id) as smn_documento_id_combo,
	(select smn_base.smn_formas_pago.fop_codigo ||'-'|| smn_base.smn_formas_pago.fop_descripcion from  smn_base.smn_formas_pago where smn_base.smn_formas_pago.smn_formas_pago_id is not null  and smn_base.smn_formas_pago.smn_formas_pago_id=smn_pagos.smn_lote_pago.smn_forma_pago_rf) as smn_forma_pago_rf_combo,
	case
		when smn_pagos.smn_lote_pago.lpa_estatus='RE' then '${lbl:b_re} '
		when smn_pagos.smn_lote_pago.lpa_estatus=' AP' then '${lbl:b_ap} '
		when smn_pagos.smn_lote_pago.lpa_estatus=' EM' then '${lbl:b_em} '
		when smn_pagos.smn_lote_pago.lpa_estatus=' CE' then '${lbl:b_ce}'
	end as lpa_estatus_combo,
	smn_pagos.smn_lote_pago.smn_entidad_financiera_rf,
	smn_pagos.smn_lote_pago.smn_cuenta_bancaria_rf,
	smn_pagos.smn_lote_pago.smn_documento_id,
	smn_pagos.smn_lote_pago.lpa_numero_lote,
	smn_pagos.smn_lote_pago.lpa_descripcion_lote,
	smn_pagos.smn_lote_pago.lpa_fecha_lote,
	smn_pagos.smn_lote_pago.smn_forma_pago_rf,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ma,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ml,
	smn_pagos.smn_lote_pago.lpa_estatus,
	smn_pagos.smn_lote_pago.lpa_fecha_registro,
	smn_pagos.smn_lote_pago.smn_lote_pago_id

from
	smn_pagos.smn_lote_pago
where
	smn_lote_pago_id is not null	
 	 	${filter}
order by 
	smn_lote_pago_id