select
		smn_pagos.smn_rechazo.rec_codigo
from
		smn_pagos.smn_rechazo
where
		upper(smn_pagos.smn_rechazo.rec_codigo) = upper(${fld:rec_codigo})
