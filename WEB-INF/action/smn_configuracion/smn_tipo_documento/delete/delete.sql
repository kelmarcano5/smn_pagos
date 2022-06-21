delete from 
	smn_pagos.smn_tipo_documento 
where 
	smn_tipo_documento_id = ${fld:id}
and
	${fld:refid} = 0