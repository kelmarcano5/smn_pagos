select
		smn_pagos.smn_orden_pago.smn_oden_pago_id,
	smn_pagos.smn_orden_pago.smn_entidades_rf,
	smn_pagos.smn_orden_pago.smn_sucursales_rf,
	smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf,
	smn_pagos.smn_orden_pago.smn_auxiliar_rf,
	smn_pagos.smn_orden_pago.smn_tipo_documento_id,
	smn_pagos.smn_orden_pago.smn_documento_id,
	smn_pagos.smn_orden_pago.opa_numero,
	smn_pagos.smn_orden_pago.smn_modulo_rf,
	smn_pagos.smn_orden_pago.smn_documento_rf,
	smn_pagos.smn_orden_pago.opa_numero_documento,
	smn_pagos.smn_orden_pago.opa_descripción,
	smn_pagos.smn_orden_pago.smn_centro_costo_rf,
	smn_pagos.smn_orden_pago.smn_proyecto_rf,
	smn_pagos.smn_orden_pago.smn_orden_compra_rf,
	smn_pagos.smn_orden_pago.opa_monto_factura_ml,
	smn_pagos.smn_orden_pago.opa_monto_factura_ma,
	smn_pagos.smn_orden_pago.opa_monto_pagado_ml,
	smn_pagos.smn_orden_pago.opa_monto_pagado_ma,
	smn_pagos.smn_orden_pago.opa_monto_dif_camb,
	smn_pagos.smn_orden_pago.opa_monto_dif_camb_pag,
	smn_pagos.smn_orden_pago.opa_saldo_factura_ml,
	smn_pagos.smn_orden_pago.opa_saldo_factura_ma,
	smn_pagos.smn_orden_pago.opa_saldo_opa_dif_cambiario,
	smn_pagos.smn_orden_pago.smn_moneda_rf,
	smn_pagos.smn_orden_pago.smn_tasa_cambio_rf,
	smn_pagos.smn_orden_pago.opa_estatus_financiero,
	smn_pagos.smn_orden_pago.opa_fecha_reverso,
	smn_pagos.smn_orden_pago.opa_estatus,
	smn_pagos.smn_orden_pago.opa_fecha_registro
from
	smn_pagos.smn_orden_pago 
where
	smn_pagos.smn_orden_pago.smn_orden_pago_id = ${fld:id}
