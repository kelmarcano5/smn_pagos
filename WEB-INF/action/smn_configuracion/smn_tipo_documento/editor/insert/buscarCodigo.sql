select
		smn_pagos.smn_tipo_documento.tdo_codigo
from
		smn_pagos.smn_tipo_documento
where
		upper(smn_pagos.smn_tipo_documento.tdo_codigo) = upper(${fld:tdo_codigo})
