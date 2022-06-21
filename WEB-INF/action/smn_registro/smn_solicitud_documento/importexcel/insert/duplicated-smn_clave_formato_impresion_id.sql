select
	smn_clave_formato_impresion_id	
from 
	smn_pagos.smn_formato_impresion
where
	smn_clave_formato_impresion_id = ${fld:smn_clave_formato_impresion_id}
	