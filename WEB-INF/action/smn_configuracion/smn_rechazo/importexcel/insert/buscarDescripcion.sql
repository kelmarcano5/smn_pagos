select
		smn_pagos.smn_rechazo.rec_descripcion
from
		smn_pagos.smn_rechazo
where
		upper(smn_pagos.smn_rechazo.rec_descripcion) = upper(${fld:rec_descripcion})
