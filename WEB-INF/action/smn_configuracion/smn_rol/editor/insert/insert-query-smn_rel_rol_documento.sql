INSERT INTO smn_pagos.smn_rel_rol_documento
(
	smn_rel_rol_documento_id,
	smn_rol_id,
	smn_documento_id
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_rel_rol_documento},
	${seq:currval@smn_pagos.seq_smn_rol},
	${fld:smn_documento_id}
)
