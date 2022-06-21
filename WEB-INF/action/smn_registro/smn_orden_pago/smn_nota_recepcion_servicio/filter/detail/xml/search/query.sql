select	
	smn_pagos.smn_documento.smn_documento_id, 
	smn_pagos.smn_documento.doc_codigo as doc_codigo_pl0,
	(select smn_compras.smn_orden_compra_cabecera.occ_descripcion from  smn_compras.smn_orden_compra_cabecera where smn_compras.smn_orden_compra_cabecera.smn_orden_compra_cabecera_id is not null  and smn_compras.smn_orden_compra_cabecera.smn_orden_compra_cabecera_id=smn_pagos.smn_nota_recepcion_servicio.smn_orden_compra_rf) as smn_orden_compra_rf_combo,
	(select smn_base.smn_centro_costo.cco_codigo ||'-'|| smn_base.smn_centro_costo.cco_descripcion_corta from smn_base.smn_centro_costo where smn_base.smn_centro_costo.smn_centro_costo_id is not null  and smn_base.smn_centro_costo.smn_centro_costo_id=smn_pagos.smn_nota_recepcion_servicio.smn_centro_costo_rf) as smn_centro_costo_rf_combo,
	(select smn_cont_financiera.smn_tipo_documento.tid_codigo ||'-'|| smn_cont_financiera.smn_tipo_documento.tid_nombre from  smn_cont_financiera.smn_tipo_documento where smn_cont_financiera.smn_tipo_documento.smn_tipo_documento_id is not null  and smn_cont_financiera.smn_tipo_documento.smn_tipo_documento_id=smn_pagos.smn_nota_recepcion_servicio.smn_tipo_documento_rf) as smn_tipo_documento_rf_combo,
	(select smn_cont_financiera.smn_documento.doc_numero_documento from  smn_cont_financiera.smn_documento where smn_cont_financiera.smn_documento.smn_documento_id is not null  and smn_cont_financiera.smn_documento.smn_documento_id=smn_pagos.smn_nota_recepcion_servicio.smn_documento_rf) as smn_documento_rf_combo,
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_nota_recepcion_servicio.smn_documento_id) as smn_documento_id_combo,
	(select smn_base.smn_clase_auxiliar.cla_codigo ||'-'|| smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_pagos.smn_nota_recepcion_servicio.smn_clase_rf) as smn_clase_rf_combo,
	(select smn_base.smn_auxiliar.aux_codigo ||' - '|| smn_base.smn_auxiliar.aux_descripcion from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_nota_recepcion_servicio.smn_proveedor_id) as smn_proveedor_id_combo,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.usr_nombres is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_nota_recepcion_servicio.smn_usuario_rf) as smn_usuario_rf_combo,
	(select smn_base.smn_monedas.mon_codigo ||' - '|| smn_base.smn_monedas.mon_nombre from  smn_base.smn_monedas where smn_base.smn_monedas.smn_monedas_id is not null  and smn_base.smn_monedas.smn_monedas_id=smn_pagos.smn_nota_recepcion_servicio.smn_moneda_rf) as smn_moneda_rf_combo,
	case
		when smn_pagos.smn_nota_recepcion_servicio.nrs_estatus='GE' then '${lbl:b_ocp_generated}'
		when smn_pagos.smn_nota_recepcion_servicio.nrs_estatus='PU' then '${lbl:b_ocp_partially_used}'
		when smn_pagos.smn_nota_recepcion_servicio.nrs_estatus='US' then '${lbl:b_ocp_used}'
	end as nrs_estatus_combo,
	smn_pagos.smn_nota_recepcion_servicio.*
from
	smn_pagos.smn_documento,
	smn_pagos.smn_nota_recepcion_servicio 
where
	smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_nota_recepcion_servicio.smn_documento_id 
 and 
	smn_nota_recepcion_servicio_id = ${fld:id}
