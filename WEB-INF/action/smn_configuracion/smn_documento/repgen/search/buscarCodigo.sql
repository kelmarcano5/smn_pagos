select
		smn_pagos.smn_documento.doc_codigo
from
		smn_pagos.smn_documento
where
		upper(smn_pagos.smn_documento.doc_codigo) = upper(${fld:doc_codigo})
