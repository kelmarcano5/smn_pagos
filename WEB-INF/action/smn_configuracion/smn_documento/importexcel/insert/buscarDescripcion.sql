select
		smn_pagos.smn_documento.doc_descripcion
from
		smn_pagos.smn_documento
where
		upper(smn_pagos.smn_documento.doc_descripcion) = upper(${fld:doc_descripcion})
