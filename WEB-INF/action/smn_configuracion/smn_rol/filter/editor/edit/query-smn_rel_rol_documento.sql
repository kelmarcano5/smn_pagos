select
	smn_pagos.smn_rel_rol_documento.*,
	smn_pagos.smn_documento.*
from 
	smn_pagos.smn_rel_rol_documento,
	smn_pagos.smn_documento
where 
	smn_pagos.smn_rel_rol_documento.smn_rol_id = ${fld:id} and
	smn_pagos.smn_rel_rol_documento.smn_documento_id = smn_pagos.smn_documento.smn_documento_id