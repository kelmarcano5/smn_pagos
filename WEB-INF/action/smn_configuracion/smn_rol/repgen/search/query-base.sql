select
		smn_pagos.smn_rol.smn_rol_id,
	${field}
from
	smn_pagos.smn_rol
where
		smn_pagos.smn_rol.smn_rol_id is not null
	${filter}
	
	
