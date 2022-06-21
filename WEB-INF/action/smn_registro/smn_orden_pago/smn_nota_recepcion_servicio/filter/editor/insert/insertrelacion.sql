

INSERT INTO smn_pagos.smn_rel_orden_pago_nrs
(
	 smn_rel_orden_pago_nrs_id,
  	 smn_nota_recepcion_servicio_id, 
  	 smn_orden_pago_id
)
VALUES
(
	${seq:currval@smn_pagos.seq_smn_rel_orden_pago_nrs},
	${seq:currval@smn_pagos.seq_smn_nota_recepcion_servicio},
	${fld:id_orden_pago}

)