INSERT INTO smn_pagos.smn_rel_autorizador_agenda
(
	smn_rel_autorizador_agenda_id,
	smn_autorizador_id,
	smn_agenda_rf
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_rel_autorizador_agenda},
	${fld:id},
	${fld:smn_agenda_id}
)
