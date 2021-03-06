INSERT INTO smn_pagos.smn_documento
(
	smn_documento_id,
	smn_documentos_generales_rf,
	smn_tipo_documento_id,
	smn_modulo_origen_rf,
	doc_codigo,
	doc_descripcion,
	doc_ver_recepcion_item,
	doc_ver_recepcion_servicio,
	doc_ver_orden_compra,
	doc_ver_control_documento,
	doc_porcentaje,
	doc_monto_fijo,
	doc_estatus,
	doc_vigencia,
	doc_idioma,
	doc_usuario,
	doc_fecha_registro,
	doc_hora
)
VALUES
(
	${seq:currval@smn_pagos.seq_smn_documento},
	${fld:smn_documentos_generales_rf},
	${fld:smn_tipo_documento_id},
	${fld:smn_modulo_origen_rf},
	${fld:doc_codigo},
	${fld:doc_descripcion},
	${fld:doc_ver_recepcion_item},
	${fld:doc_ver_recepcion_servicio},
	${fld:doc_ver_orden_compra},
	${fld:doc_ver_control_documento},
	${fld:doc_porcentaje},
	${fld:doc_monto_fijo},
	${fld:doc_estatus},
	${fld:doc_vigencia},
	'${def:locale}',
	'${def:user}',
	'${def:date}',
	'${def:time}'
)
