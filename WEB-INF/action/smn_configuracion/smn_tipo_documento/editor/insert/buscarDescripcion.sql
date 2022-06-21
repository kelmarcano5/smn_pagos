select
		smn_pagos.smn_tipo_documento.tdo_descripcion
from
		smn_pagos.smn_tipo_documento
where
		upper(smn_pagos.smn_tipo_documento.tdo_descripcion) = upper(${fld:tdo_descripcion})
