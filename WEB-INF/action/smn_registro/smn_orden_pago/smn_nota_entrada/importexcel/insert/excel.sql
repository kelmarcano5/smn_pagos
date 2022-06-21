INSERT INTO smn_pagos.smn_nota_entrada
(
	smn_nota_entrada_op_id,
	smn_nota_entrada_rf,
	smn_orden_compra_rf,
	smn_documento_rf,
	smn_numero_documento_rf,
	smn_clase_rf,
	smn_proveedor_id,
	smn_usuario_rf,
	nep_monto_ml,
	nep_monto_ma,
	smn_moneda_rf,
	nep_monto_usado_ml,
	nep_monto_usado_ma,
	nep_monto_saldo_ml,
	nep_monto_saldo_ma,
	ocp_estatus,
	nep_idioma,
	nep_usuario,
	nep_fecha_registro,
	nep_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_nota_entrada},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
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
