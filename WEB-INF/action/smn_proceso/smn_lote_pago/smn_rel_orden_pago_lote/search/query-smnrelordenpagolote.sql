select
	smn_pagos.smn_rel_orden_pago_lote.smn_rel_orden_pago_lote_id,
	smn_pagos.smn_orden_pago.opa_numero_documento ||'-'|| smn_pagos.smn_orden_pago.opa_descripcion as smn_orden_pago_id,
	smn_pagos.smn_lote_pago.lpa_descripcion_lote as smn_lote_pago_id,
	smn_base.smn_entidades.ent_descripcion_corta as smn_entidad_rf,
	smn_base.smn_entidades.ent_descripcion_corta as smn_sucursal_rf,
	(
		select smn_base.smn_auxiliar.aux_descripcion from smn_compras.smn_proveedor
			inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_compras.smn_proveedor.smn_auxiliar_rf
			where smn_compras.smn_proveedor.smn_proveedor_id = smn_pagos.smn_rel_orden_pago_lote.smn_proveedor_rf
	) as smn_proveedor_rf,
	smn_pagos.smn_documento.doc_descripcion as smn_documento_id,
	smn_pagos.smn_rel_orden_pago_lote.eol_numero_pago,
	smn_pagos.smn_rel_orden_pago_lote.eol_fecha_pago,
	smn_pagos.smn_rel_orden_pago_lote.eol_referencia_bancaria,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_pago_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_incremento_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_anticipo_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_retencion_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_neto_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_diferencial_cambiario_ml,
	smn_base.smn_monedas.mon_codigo ||'-'|| smn_base.smn_monedas.mon_nombre as smn_moneda_rf,
	smn_base.smn_tasas_de_cambio.tca_tasa_cambio ||'-'|| smn_base.smn_tasas_de_cambio.tca_descripcion as smn_tasa_cambio_rf,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_pago_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_incremento_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_anticipo_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_retencion_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_neto_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_fecha_registro,
	case
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='RE' then '${lbl:b_re}'
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='AP' then '${lbl:b_ap}'
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='EM' then '${lbl:b_em}'
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='CE' then '${lbl:b_ce}'
	end as eol_estatus
from
	smn_pagos.smn_rel_orden_pago_lote
	INNER JOIN smn_pagos.smn_orden_pago ON smn_pagos.smn_orden_pago.smn_orden_pago_id = smn_pagos.smn_rel_orden_pago_lote.smn_orden_pago_id
	INNER JOIN smn_pagos.smn_lote_pago ON smn_pagos.smn_lote_pago.smn_lote_pago_id = smn_pagos.smn_rel_orden_pago_lote.smn_lote_pago_id
	INNER JOIN smn_base.smn_entidades ON smn_base.smn_entidades.smn_entidades_id = smn_pagos.smn_rel_orden_pago_lote.smn_entidad_rf
	INNER JOIN smn_pagos.smn_documento ON smn_pagos.smn_documento.smn_documento_id = smn_pagos.smn_rel_orden_pago_lote.smn_documento_id
	LEFT JOIN smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_pagos.smn_rel_orden_pago_lote.smn_moneda_rf
	LEFT JOIN smn_base.smn_tasas_de_cambio on smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id = smn_pagos.smn_rel_orden_pago_lote.smn_tasa_cambio_rf
