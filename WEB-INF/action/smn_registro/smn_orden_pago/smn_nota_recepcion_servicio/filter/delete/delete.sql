delete from smn_pagos.smn_nota_recepcion_servicio where smn_nota_recepcion_servicio_id = ${fld:id};
delete from smn_pagos.smn_rel_orden_pago_nrs where smn_nota_recepcion_servicio_id = ${fld:id}

