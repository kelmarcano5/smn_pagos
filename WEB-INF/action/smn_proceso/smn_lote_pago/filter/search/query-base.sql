select
    smn_pagos.smn_lote_pago.smn_lote_pago_id,
    smn_base.smn_entidades_financieras.efi_nombre as smn_entidad_financiera_rf,
    smn_base.smn_cuentas_bancarias.cba_nombre as smn_cuenta_bancaria_rf,
    smn_base.smn_formas_pago.fop_descripcion as smn_forma_pago_rf,
    smn_pagos.smn_documento.doc_descripcion as smn_documento_id,
	case
		when smn_pagos.smn_lote_pago.lpa_estatus='RE' then '${lbl:b_re}'
		when smn_pagos.smn_lote_pago.lpa_estatus='AP' then '${lbl:b_ap}'
		when smn_pagos.smn_lote_pago.lpa_estatus='EM' then '${lbl:b_em}'
		when smn_pagos.smn_lote_pago.lpa_estatus='CE' then '${lbl:b_ce}'
	end as lpa_estatus,
	smn_pagos.smn_lote_pago.lpa_numero_lote,
	smn_pagos.smn_lote_pago.lpa_descripcion_lote,
	smn_pagos.smn_lote_pago.lpa_fecha_lote,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ml,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ma,
	smn_pagos.smn_lote_pago.lpa_fecha_registro,
	smn_base.smn_monedas.mon_codigo ||'-'|| smn_base.smn_monedas.mon_nombre as smn_moneda_rf,
	smn_base.smn_tasas_de_cambio.tca_tasa_cambio ||'-'|| smn_base.smn_tasas_de_cambio.tca_descripcion as smn_tasa_cambio_rf,
	smn_pagos.smn_canal_pago.cdp_codigo ||'-'|| smn_pagos.smn_canal_pago.cdp_descripcion as smn_canal_pago_id,
	smn_pagos.smn_lote_pago.lpa_ano_comprobante_contable,
	smn_pagos.smn_lote_pago.lpa_periodo_comprobante_contable,
	smn_cont_financiera.smn_tipo_comprobante.tic_codigo ||'-'|| smn_cont_financiera.smn_tipo_comprobante.tic_nombre as lpa_tipo_comprobante_contable_id,
	smn_pagos.smn_lote_pago.lpa_numero_comprobante_contable
	
from
	smn_pagos.smn_lote_pago
INNER JOIN smn_base.smn_entidades_financieras on smn_base.smn_entidades_financieras.smn_entidades_financieras_id = smn_pagos.smn_lote_pago.smn_entidad_financiera_rf
INNER JOIN smn_base.smn_cuentas_bancarias on smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id = smn_pagos.smn_lote_pago.smn_cuenta_bancaria_rf
INNER JOIN smn_base.smn_formas_pago on smn_base.smn_formas_pago.smn_formas_pago_id = smn_pagos.smn_lote_pago.smn_forma_pago_rf
INNER JOIN smn_pagos.smn_documento on smn_pagos.smn_documento.smn_documento_id = smn_pagos.smn_lote_pago.smn_documento_id
LEFT JOIN smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_pagos.smn_lote_pago.smn_moneda_rf
LEFT JOIN smn_base.smn_tasas_de_cambio on smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id = smn_pagos.smn_lote_pago.smn_tasa_cambio_rf
LEFT JOIN smn_pagos.smn_canal_pago on smn_pagos.smn_canal_pago.smn_canal_pago_id = smn_pagos.smn_lote_pago.smn_canal_pago_id
LEFT JOIN smn_cont_financiera.smn_tipo_comprobante on smn_cont_financiera.smn_tipo_comprobante.smn_tipo_comprobante_id = smn_pagos.smn_lote_pago.lpa_tipo_comprobante_contable_id
where
	smn_lote_pago_id is not null
	${filter}
order by
		smn_lote_pago_id
