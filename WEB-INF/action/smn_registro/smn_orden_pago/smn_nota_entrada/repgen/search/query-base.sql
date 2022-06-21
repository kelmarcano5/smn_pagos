select
		smn_pagos.smn_nota_entrada.smn_nota_entrada_id,
	${field}
from
	smn_pagos.smn_nota_entrada
where
		smn_pagos.smn_nota_entrada.smn_nota_entrada_id is not null
	${filter}
	
	
