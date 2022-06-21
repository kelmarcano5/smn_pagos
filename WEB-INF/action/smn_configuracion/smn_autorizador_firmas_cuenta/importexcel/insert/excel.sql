INSERT INTO smn_pagos.smn_autorizador_firmas_cuentas
(
	smn_aut_firmas_cuentas_id,
	smn_autorizador_id,
	smn_entidades_financieras_rf,
	smn_tipo_firma_id,
	fcb_estatus,
	fcb_vigencia,
	fcb_idioma,
	fcb_usuario,
	fcb_fecha_registro,
	fcb_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_autorizador_firmas_cuentas},
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
