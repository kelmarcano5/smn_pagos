select
	smn_pagos.smn_rel_orden_pago_lote.smn_rel_orden_pago_lote_id,
	case
        when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='RE' then '${lbl:b_re}'
        when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='AP' then '${lbl:b_ap}'
        when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='EM' then '${lbl:b_em}'
        when smn_pagos.smn_rel_orden_pago_lote.eol_estatus='CE' then '${lbl:b_ce}'
	end as eol_estatus_combo,
	smn_pagos.smn_rel_orden_pago_lote.smn_rel_orden_pago_lote_id,
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
