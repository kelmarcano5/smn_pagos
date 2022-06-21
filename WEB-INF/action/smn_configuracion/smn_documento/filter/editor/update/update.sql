UPDATE smn_pagos.smn_documento SET
	smn_documentos_generales_rf=${fld:smn_documentos_generales_rf},
	smn_tipo_documento_id=${fld:smn_tipo_documento_id},
	smn_modulo_origen_rf=${fld:smn_modulo_origen_rf},
	doc_codigo=${fld:doc_codigo},
	doc_descripcion=${fld:doc_descripcion},
	doc_ver_recepcion_item=${fld:doc_ver_recepcion_item},
	doc_ver_recepcion_servicio=${fld:doc_ver_recepcion_servicio},
	doc_ver_orden_compra=${fld:doc_ver_orden_compra},
	doc_ver_control_documento=${fld:doc_ver_control_documento},
	doc_porcentaje=${fld:doc_porcentaje},
	doc_monto_fijo=${fld:doc_monto_fijo},
	doc_estatus=${fld:doc_estatus},
	doc_vigencia=${fld:doc_vigencia},
	doc_idioma='${def:locale}',
	doc_usuario='${def:user}',
	doc_fecha_registro={d '${def:date}'},
	doc_hora='${def:time}'

WHERE
	smn_documento_id=${fld:id}

