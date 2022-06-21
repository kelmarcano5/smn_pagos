select
	smn_pagos.smn_rel_documento_entidades.*,
	smn_base.smn_entidades.*
from 
	smn_pagos.smn_rel_documento_entidades,
	smn_base.smn_entidades
where 
	smn_pagos.smn_rel_documento_entidades.smn_documento_id = ${fld:id} and
	smn_pagos.smn_rel_documento_entidades.smn_entidades_id = smn_base.smn_entidades.smn_entidades_id