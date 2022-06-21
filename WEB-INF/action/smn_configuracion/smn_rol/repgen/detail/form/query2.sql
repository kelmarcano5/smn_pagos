select
		smn_pagos.smn_rol.rol_tipo,
	smn_pagos.smn_rol.smn_corporaciones_rf,
	smn_pagos.smn_rol.smn_entidades_rf,
	smn_pagos.smn_rol.smn_sucursales_rf,
	smn_pagos.smn_rol.smn_areas_servicios_rf,
	smn_pagos.smn_rol.smn_unidades_servicios_rf,
	smn_pagos.smn_rol.smn_estructura_organizacional_rf,
	smn_pagos.smn_rol.rol_estatus,
	smn_pagos.smn_rol.rol_vigencia,
	smn_pagos.smn_rol.rol_fecha_registro
from
	smn_pagos.smn_rol 
where
	smn_pagos.smn_rol.smn_rol_id = ${fld:id}
