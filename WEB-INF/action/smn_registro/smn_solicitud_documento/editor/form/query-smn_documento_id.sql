select smn_pagos.smn_documento.smn_documento_id as id,  smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion as item 
from smn_pagos.smn_documento, smn_pagos.smn_tipo_documento
where smn_pagos.smn_documento.smn_tipo_documento_id = smn_pagos.smn_tipo_documento.smn_tipo_documento_id and smn_pagos.smn_tipo_documento.tdo_tipo_movimiento = 'PA'