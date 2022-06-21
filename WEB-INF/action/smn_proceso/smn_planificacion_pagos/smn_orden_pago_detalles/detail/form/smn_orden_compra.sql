SELECT smn_pagos.smn_orden_compra.smn_numero_documento_rf ||' - '|| smn_pagos.smn_orden_compra.ocp_monto_ml AS id 
FROM smn_pagos.smn_orden_compra, smn_pagos.smn_rel_orden_pago_oc
WHERE 
smn_pagos.smn_rel_orden_pago_oc.smn_orden_pago_id = ${fld:id} 
AND smn_pagos.smn_orden_compra.smn_orden_compra_op_id = smn_pagos.smn_rel_orden_pago_oc.smn_orden_compra_id