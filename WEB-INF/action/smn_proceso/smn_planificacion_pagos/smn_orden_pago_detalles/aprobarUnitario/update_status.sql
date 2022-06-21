UPDATE smn_pagos.smn_orden_pago SET
	opa_estatus_financiero='PL'
WHERE
	smn_orden_pago_id=${fld:id}
AND opa_estatus_financiero ='AP';
