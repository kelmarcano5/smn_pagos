select
		smn_pagos.smn_formpag_documento_banco.smn_documento_id,
	smn_pagos.smn_formpag_documento_banco.smn_forma_pago_rf,
	smn_pagos.smn_formpag_documento_banco.smn_entidad_financiera_rf,
	smn_pagos.smn_formpag_documento_banco.fdb_genera_transaccion,
	smn_pagos.smn_formpag_documento_banco.fdb_programa_impresion,
	smn_pagos.smn_formpag_documento_banco.fdb_estatus,
	smn_pagos.smn_formpag_documento_banco.fdb_vigencia,
	smn_pagos.smn_formpag_documento_banco.fdb_fecha_registro
from
	smn_pagos.smn_formpag_documento_banco 
where
	smn_pagos.smn_formpag_documento_banco.smn_formpag_documento_banco_id = ${fld:id}
