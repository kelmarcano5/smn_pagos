select	
	smn_pagos.smn_tipo_documento.smn_tipo_documento_id, 
	smn_pagos.smn_tipo_documento.tdo_codigo as tdo_codigo_pl0,
	smn_pagos.smn_documento.smn_documento_id, 
	smn_pagos.smn_documento.doc_codigo as doc_codigo_pl1,
	(select smn_base.smn_entidades.ent_codigo ||'-'|| smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_pagos.smn_orden_pago.smn_entidades_rf) as smn_entidades_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo ||'-'|| smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_pagos.smn_orden_pago.smn_sucursales_rf) as smn_sucursales_rf_combo,
	(select smn_base.smn_clase_auxiliar.cla_codigo ||'-'|| smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf) as smn_clase_auxiliar_rf_combo,
	(select smn_base.smn_auxiliar.aux_codigo ||' - '|| smn_base.smn_auxiliar.aux_descripcion from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_orden_pago.smn_auxiliar_rf) as smn_auxiliar_rf_combo,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_orden_pago.smn_usuario_rf) as smn_usuario_rf_combo,
	(select smn_pagos.smn_tipo_documento.tdo_codigo ||'-'|| smn_pagos.smn_tipo_documento.tdo_descripcion from  smn_pagos.smn_tipo_documento where smn_pagos.smn_tipo_documento.smn_tipo_documento_id is not null  and smn_pagos.smn_tipo_documento.smn_tipo_documento_id=smn_pagos.smn_orden_pago.smn_tipo_documento_id) as smn_tipo_documento_id_combo,
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_orden_pago.smn_documento_id) as smn_documento_id_combo,
	(select smn_base.smn_modulos.mod_codigo ||'-'|| smn_base.smn_modulos.mod_nombre from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_pagos.smn_orden_pago.smn_modulo_rf) as smn_modulo_rf_combo,
	(select smn_base.smn_centro_costo.cco_codigo ||'-'|| smn_base.smn_centro_costo.cco_descripcion_corta from  smn_base.smn_centro_costo where smn_base.smn_centro_costo.smn_centro_costo_id is not null  and smn_base.smn_centro_costo.smn_centro_costo_id=smn_pagos.smn_orden_pago.smn_centro_costo_rf) as smn_centro_costo_rf_combo,
	(select smn_base.smn_proyecto.pry_codigo ||'-'|| smn_base.smn_proyecto.pry_nombre from smn_base.smn_proyecto where smn_base.smn_proyecto.smn_proyecto_id is not null  and smn_base.smn_proyecto.smn_proyecto_id=smn_pagos.smn_orden_pago.smn_proyecto_rf) as smn_proyecto_rf_combo,
	(select smn_base.smn_tasas_de_cambio.tca_tasa_cambio from smn_base.smn_tasas_de_cambio where smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id is not null  and smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id=smn_pagos.smn_orden_pago.smn_orden_compra_rf) as smn_orden_compra_rf_combo,
	(select smn_base.smn_monedas.mon_codigo ||'-'|| smn_base.smn_monedas.mon_nombre from  smn_base.smn_monedas where smn_base.smn_monedas.smn_monedas_id is not null  and smn_base.smn_monedas.smn_monedas_id=smn_pagos.smn_orden_pago.smn_moneda_rf) as smn_moneda_rf_combo,
	(select smn_base.smn_tasas_de_cambio.tca_tasa_cambio from  smn_base.smn_tasas_de_cambio where smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id is not null  and smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id=smn_pagos.smn_orden_pago.smn_tasa_cambio_rf) as smn_tasa_cambio_rf_combo,
	case
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='GE' then '${lbl:b_opa_generated}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='AP' then '${lbl:b_opa_approved}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='PL' then '${lbl:b_opa_planned}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='PP' then '${lbl:b_opa_partially_paid}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='PA' then '${lbl:b_opa_paid}'
		when smn_pagos.smn_orden_pago.opa_estatus_financiero='RV' then '${lbl:b_opa_reversado}'
	end as opa_estatus_financiero_combo,
	case
		when smn_pagos.smn_orden_pago.opa_estatus='GE' then '${lbl:b_opa_generated}'
		when smn_pagos.smn_orden_pago.opa_estatus='RV' then '${lbl:b_opa_reversado}'
		when smn_pagos.smn_orden_pago.opa_estatus='AO' then '${lbl:b_opa_approvedOC}'
		when smn_pagos.smn_orden_pago.opa_estatus='AR' then '${lbl:b_opa_approvedNR}'
		when smn_pagos.smn_orden_pago.opa_estatus='AN' then '${lbl:b_opa_approvedNE}'
		when smn_pagos.smn_orden_pago.opa_estatus='OR' then '${lbl:b_opa_approvedOCNR}'
		when smn_pagos.smn_orden_pago.opa_estatus='OE' then '${lbl:b_opa_approvedOCNE}'
	end as opa_estatus_combo,
	smn_pagos.smn_orden_pago.*
from
	smn_pagos.smn_tipo_documento,
	smn_pagos.smn_documento,
	smn_pagos.smn_orden_pago 
where
	smn_pagos.smn_tipo_documento.smn_tipo_documento_id=smn_pagos.smn_orden_pago.smn_tipo_documento_id and
	smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_orden_pago.smn_documento_id 
 and 
	smn_orden_pago_id = ${fld:id}
