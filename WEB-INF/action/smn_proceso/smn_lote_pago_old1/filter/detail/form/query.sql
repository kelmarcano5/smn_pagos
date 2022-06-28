select
	(select smn_base.smn_entidades_financieras.efi_codigo ||'-'|| smn_base.smn_entidades_financieras.efi_nombre from  smn_base.smn_entidades_financieras where smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null  and smn_base.smn_entidades_financieras.smn_entidades_financieras_id=smn_pagos.smn_lote_pago.smn_entidad_financiera_rf) as smn_entidad_financiera_rf_combo,
	(select smn_base.smn_cuentas_bancarias.cba_codigo ||'-'|| smn_base.smn_cuentas_bancarias.cba_nombre from  smn_base.smn_cuentas_bancarias where smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id is not null  and smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id=smn_pagos.smn_lote_pago.smn_cuenta_bancaria_rf) as smn_cuenta_bancaria_rf_combo,
	(select smn_base.smn_formas_pago.fop_codigo ||'-'|| smn_base.smn_formas_pago.fop_descripcion from  smn_base.smn_formas_pago where smn_base.smn_formas_pago.smn_formas_pago_id is not null  and smn_base.smn_formas_pago.smn_formas_pago_id=smn_pagos.smn_lote_pago.smn_forma_pago_rf) as smn_forma_pago_rf_combo,
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_lote_pago.smn_documento_id) as smn_documento_id_combo,
	(select smn_base.smn_monedas.mon_codigo ||'-'|| smn_base.smn_monedas.mon_nombre from  smn_base.smn_monedas where smn_base.smn_monedas.smn_monedas_id is not null  and smn_base.smn_monedas.smn_monedas_id=smn_pagos.smn_lote_pago.smn_moneda_rf) as smn_moneda_rf_combo,
	(select smn_base.smn_tasas_de_cambio ||'-'|| smn_base.smn_tasas_de_cambio from  smn_base.smn_tasas_de_cambio where smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id is not null  and smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id=smn_pagos.smn_lote_pago.smn_tasa_cambio_rf) as smn_tasa_cambio_rf_combo,
	(select smn_pagos.smn_canal_pago.cdp_codigo ||'-'|| smn_pagos.smn_canal_pago.cdp_descripcion from  smn_pagos.smn_canal_pago where smn_pagos.smn_canal_pago.smn_canal_pago_id is not null  and smn_pagos.smn_canal_pago.smn_canal_pago_id=smn_pagos.smn_lote_pago.smn_canal_pago_id) as smn_canal_pago_id_combo,
	(select smn_cont_financiera.smn_tipo_comprobante.tic_codigo ||'-'|| smn_cont_financiera.smn_tipo_comprobante.tic_nombre from  smn_cont_financiera.smn_tipo_comprobante where smn_cont_financiera.smn_tipo_comprobante.smn_tipo_comprobante_id is not null  and smn_cont_financiera.smn_tipo_comprobante.smn_tipo_comprobante_id=smn_pagos.smn_lote_pago.lpa_tipo_comprobante_contable_id) as lpa_tipo_comprobante_contable_id_combo,
	case
		when smn_pagos.smn_lote_pago.lpa_estatus='RE' then '${lbl:b_re} '
		when smn_pagos.smn_lote_pago.lpa_estatus=' AP' then '${lbl:b_ap} '
		when smn_pagos.smn_lote_pago.lpa_estatus=' EM' then '${lbl:b_em} '
		when smn_pagos.smn_lote_pago.lpa_estatus=' CE' then '${lbl:b_ce}'
	end as lpa_estatus_combo,
	smn_pagos.smn_lote_pago.*
from 
	smn_pagos.smn_lote_pago
where
	smn_lote_pago_id = ${fld:id}
