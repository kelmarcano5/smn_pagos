select smn_pagos.smn_documento.smn_documento_id as id, smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion as item from smn_pagos.smn_documento
where  smn_pagos.smn_documento.smn_tipo_documento_id = 5
