SELECT smn_pagos.smn_nota_entrada.smn_numero_documento_rf ||' - '|| smn_pagos.smn_nota_entrada.nep_monto_ml AS id 
FROM smn_pagos.smn_nota_entrada, smn_pagos.smn_rel_orden_pago_ne
WHERE smn_pagos.smn_rel_orden_pago_ne.smn_orden_pago_id = ${fld:id}
AND smn_pagos.smn_nota_entrada.smn_nota_entrada_op_id = smn_pagos.smn_rel_orden_pago_ne.smn_nota_entrada_op_id