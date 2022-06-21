UPDATE smn_pagos.smn_orden_pago SET
	opa_estatus_financiero='PL'
	FROM smn_compras.smn_proveedor

WHERE
smn_compras.smn_proveedor.smn_auxiliar_rf = smn_pagos.smn_orden_pago.smn_auxiliar_rf
AND smn_entidades_rf=${fld:id1}
AND smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf=${fld:id3}
AND smn_clasificacion_abc_rf=${fld:id4}
AND opa_estatus_financiero ='AP';
