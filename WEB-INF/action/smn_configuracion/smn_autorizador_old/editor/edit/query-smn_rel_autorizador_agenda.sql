select
	smn_pagos.smn_rel_autorizador_agenda.*,
	smn_base.smn_agenda.*
from 
	smn_pagos.smn_rel_autorizador_agenda,
	smn_base.smn_agenda
where 
	smn_pagos.smn_rel_autorizador_agenda.smn_autorizador_id = ${fld:id} and
	smn_pagos.smn_rel_autorizador_agenda.smn_agenda_rf = smn_base.smn_agenda.smn_agenda_id