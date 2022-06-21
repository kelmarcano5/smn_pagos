SELECT smn_pagos.smn_nota_recepcion_servicio.smn_numero_documento_rf ||' - '|| smn_pagos.smn_nota_recepcion_servicio.nrs_monto_ml AS id 
FROM smn_pagos.smn_nota_recepcion_servicio, smn_pagos.smn_rel_orden_pago_nrs
WHERE smn_pagos.smn_rel_orden_pago_nrs.smn_orden_pago_id = ${fld:id}
AND smn_pagos.smn_nota_recepcion_servicio.smn_nota_recepcion_servicio_id = smn_pagos.smn_rel_orden_pago_nrs.smn_nota_recepcion_servicio_id