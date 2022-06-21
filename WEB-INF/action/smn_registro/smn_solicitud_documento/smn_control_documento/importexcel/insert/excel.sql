INSERT INTO smn_pagos.smn_control_documento
(
	smn_control_documento_id,
	smn_solicitud_documento_id,
	smn_cuenta_bancaria_rf,
	dpd_numero_documento,
	dpd_fecha_uso,
	dpd_fecha_anulacion,
	dpd_estatus,
	dpd_idioma,
	dpd_usuario,
	dpd_fecha_registro,
	dpd_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_control_documento},
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
