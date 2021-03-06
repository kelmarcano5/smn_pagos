INSERT INTO smn_pagos.smn_anticipo
(
	smn_anticipo_id,
	smn_orden_compra_rf,
	smn_entidad_rf,
	smn_usuario_solicitante_rf,
	smn_usuario_aprobador_rf,
	smn_sucursal_rf,
	smn_proveedor_rf,
	smn_documento_id,
	ant_numero_documento,
	ant_porcentaje,
	ant_monto_ml,
	smn_moneda_rf,
	smn_tasa_rf,
	ant_monto_ma,
	ant_estatus,
	ant_idioma,
	ant_usuario,
	ant_fecha_registro,
	ant_hora
)
VALUES
(
	${seq:nextval@smn_pagos.seq_smn_anticipo},
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
