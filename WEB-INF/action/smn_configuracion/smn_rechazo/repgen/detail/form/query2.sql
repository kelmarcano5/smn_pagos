select
		smn_pagos.smn_rechazo.rec_codigo,
	smn_pagos.smn_rechazo.rec_descripcion,
	smn_pagos.smn_rechazo.rec_estatus,
	smn_pagos.smn_rechazo.rec_vigencia,
	smn_pagos.smn_rechazo.rec_fecha_registro
from
	smn_pagos.smn_rechazo 
where
	smn_pagos.smn_rechazo.smn_rechazo_id = ${fld:id}
