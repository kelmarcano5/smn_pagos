select
	(select smn_pagos.smn_lote_pago.lpa_numero_lote ||'-'|| smn_pagos.smn_lote_pago.lpa_descripcion_lote from  smn_pagos.smn_lote_pago where smn_pagos.smn_lote_pago.smn_lote_pago_id is not null  and smn_pagos.smn_lote_pago.smn_lote_pago_id=smn_pagos.smn_rel_orden_pago_lote.smn_lote_pago_id) as smn_lote_pago_id_combo,
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_rel_orden_pago_lote.smn_documento_id) as smn_documento_id_combo,
	case
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='RE' then '${lbl:b_re} '
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus=' AP' then '${lbl:b_ap} '
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus=' EM' then '${lbl:b_em} '
		when smn_pagos.smn_rel_orden_pago_lote.eol_estatus=' CE' then '${lbl:b_ce}'
	end as eol_estatus_combo,
	(select smn_pagos.smn_orden_pago.opa_numero_documento ||'-'|| smn_pagos.smn_orden_pago.opa_descripcion from  smn_pagos.smn_orden_pago where smn_pagos.smn_orden_pago.smn_orden_pago_id is not null  and smn_pagos.smn_orden_pago.smn_orden_pago_id=smn_pagos.smn_rel_orden_pago_lote.smn_orden_pago_id) as smn_orden_pago_id_combo,
	(select smn_base.smn_monedas.mon_codigo ||'-'|| smn_base.smn_monedas.mon_nombre from  smn_base.smn_monedas where smn_base.smn_monedas.smn_monedas_id is not null  and smn_base.smn_monedas.smn_monedas_id=smn_pagos.smn_rel_orden_pago_lote.smn_moneda_rf) as smn_moneda_rf_combo,
	(select smn_base.smn_tasas_de_cambio ||'-'|| smn_base.smn_tasas_de_cambio from  smn_base.smn_tasas_de_cambio where smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id is not null  and smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id=smn_pagos.smn_rel_orden_pago_lote.smn_tasa_cambio_rf) as smn_tasa_cambio_rf_combo,
	smn_pagos.smn_rel_orden_pago_lote.smn_lote_pago_id,
	smn_pagos.smn_rel_orden_pago_lote.smn_proveedor_rf,
	smn_pagos.smn_rel_orden_pago_lote.smn_documento_id,
	smn_pagos.smn_rel_orden_pago_lote.eol_numero_pago,
	smn_pagos.smn_rel_orden_pago_lote.eol_fecha_pago,
	smn_pagos.smn_rel_orden_pago_lote.eol_referencia_bancaria,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_neto_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_diferencial_cambiario_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_neto_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_estatus,
	smn_pagos.smn_rel_orden_pago_lote.eol_fecha_registro,
	smn_pagos.smn_rel_orden_pago_lote.smn_orden_pago_id,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_pago_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_incremento_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_anticipo_ml,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_retencion_ml,
	smn_pagos.smn_rel_orden_pago_lote.smn_moneda_rf,
	smn_pagos.smn_rel_orden_pago_lote.smn_tasa_cambio_rf,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_pago_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_incremento_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_anticipo_ma,
	smn_pagos.smn_rel_orden_pago_lote.eol_monto_retencion_ma

from 
	smn_pagos.smn_rel_orden_pago_lote
