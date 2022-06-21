select	
	smn_pagos.smn_orden_pago.smn_orden_pago_id,
	smn_pagos.smn_documento.smn_documento_id, 
	smn_pagos.smn_documento.doc_codigo as doc_codigo_pl0,
	(select smn_base.smn_entidades.ent_codigo ||'-'|| smn_base.smn_entidades.ent_descripcion_corta  from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_pagos.smn_orden_pago.smn_entidades_rf) as smn_entidades_rf_combo,
	(select smn_base.smn_clase_auxiliar.cla_codigo ||'-'|| smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf) as smn_clase_auxiliar_rf_combo,
	(select smn_base.smn_auxiliar.aux_codigo from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_orden_pago.smn_auxiliar_rf) as smn_auxiliar_rf_combo,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_orden_pago.smn_usuario_rf) as smn_usuario_rf_combo,
	(select smn_pagos.smn_tipo_documento.tdo_codigo ||'-'|| smn_pagos.smn_tipo_documento.tdo_descripcion from  smn_pagos.smn_tipo_documento where smn_pagos.smn_tipo_documento.smn_tipo_documento_id is not null  and smn_pagos.smn_tipo_documento.smn_tipo_documento_id=smn_pagos.smn_orden_pago.smn_tipo_documento_id) as smn_tipo_documento_id_combo,
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_orden_pago.smn_documento_id) as smn_documento_id_combo,
	(select smn_base.smn_modulos.mod_codigo ||'-'|| smn_base.smn_modulos.mod_nombre from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_pagos.smn_orden_pago.smn_modulo_rf) as smn_modulo_rf_combo,
	case
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='GE' then '${lbl:b_opa_generated}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='AP' then '${lbl:b_opa_approved}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='PL' then '${lbl:b_opa_planned}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='PP' then '${lbl:b_opa_partially_paid}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='PA' then '${lbl:b_opa_paid}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='RV' then '${lbl:b_opa_reversado}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='RE' then '${lbl:b_rejected}'
	end as opa_estatus_financiero_combo,
	smn_pagos.smn_orden_pago.smn_entidades_rf,
	smn_pagos.smn_orden_pago.smn_auxiliar_rf,
	smn_pagos.smn_orden_pago.smn_usuario_rf,
	smn_pagos.smn_orden_pago.smn_documento_id,
	smn_pagos.smn_orden_pago.opa_numero,
	smn_pagos.smn_orden_pago.smn_documento_rf,
	smn_pagos.smn_orden_pago.opa_numero_documento,
	smn_pagos.smn_orden_pago.opa_monto_factura_ml,
	smn_pagos.smn_orden_pago.opa_estatus_financiero,
	smn_pagos.smn_orden_pago.opa_fecha_registro,
	smn_pagos.smn_orden_pago.opa_documento_descripcion_origen

from
	smn_pagos.smn_documento,
	smn_pagos.smn_orden_pago 
where
	smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_orden_pago.smn_documento_id 

