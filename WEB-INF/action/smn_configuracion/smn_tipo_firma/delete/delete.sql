delete from 
	smn_pagos.smn_tipo_firma 
where 
	smn_tipo_firma_id = ${fld:id}
and
	${fld:refid} = 0
