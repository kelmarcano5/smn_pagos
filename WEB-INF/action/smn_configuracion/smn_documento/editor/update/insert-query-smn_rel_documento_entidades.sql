INSERT INTO smn_pagos.smn_rel_documento_entidades
(
	smn_rel_documento_entidades_id,
	smn_documento_id,
	smn_entidades_id
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_rel_documento_entidades},
	${fld:id},
	${fld:smn_entidades_id}
)
