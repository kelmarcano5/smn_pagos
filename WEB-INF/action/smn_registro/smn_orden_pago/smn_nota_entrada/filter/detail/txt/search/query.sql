select
	(select smn_inventario.smn_movimiento_cabecera.mca_numero from  smn_inventario.smn_movimiento_cabecera where smn_inventario.smn_movimiento_cabecera.smn_movimiento_cabecera_id is not null  and smn_inventario.smn_movimiento_cabecera.smn_movimiento_cabecera_id=smn_pagos.smn_nota_entrada.smn_nota_entrada_rf) as smn_nota_entrada_rf_combo,
	(select smn_compras.smn_orden_compra_detalle.ocd_descripcion from  smn_compras.smn_orden_compra_detalle where smn_compras.smn_orden_compra_detalle.smn_orden_compra_detalle_id is not null  and smn_compras.smn_orden_compra_detalle.smn_orden_compra_cabecera_id=smn_pagos.smn_nota_entrada.smn_orden_compra_rf) as smn_orden_compra_rf_combo,
	(select smn_cont_financiera.smn_documento.doc_numero_documento from  smn_cont_financiera.smn_documento where smn_cont_financiera.smn_documento.smn_documento_id is not null  and smn_cont_financiera.smn_documento.smn_documento_id=smn_pagos.smn_nota_entrada.smn_documento_rf) as smn_documento_rf_combo,
	(select smn_base.smn_clase_auxiliar.cla_codigo ||'-'|| smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_pagos.smn_nota_entrada.smn_clase_rf) as smn_clase_rf_combo,
	(select smn_base.smn_auxiliar.aux_codigo from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_nota_entrada.smn_proveedor_id) as smn_proveedor_id_combo,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.usr_nombres is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_nota_entrada.smn_usuario_rf) as smn_usuario_rf_combo,
	(select smn_base.smn_monedas.mon_codigo from  smn_base.smn_monedas where smn_base.smn_monedas.smn_monedas_id is not null  and smn_base.smn_monedas.smn_monedas_id=smn_pagos.smn_nota_entrada.smn_moneda_rf) as smn_moneda_rf_combo,
	case
		when smn_pagos.smn_nota_entrada.ocp_estatus='GE' then '${lbl:b_ocp_generated}'
		when smn_pagos.smn_nota_entrada.ocp_estatus='PU' then '${lbl:b_ocp_partially_used}'
		when smn_pagos.smn_nota_entrada.ocp_estatus='US' then '${lbl:b_ocp_used}'
	end as ocp_estatus_combo,
	smn_pagos.smn_nota_entrada.*
from 
	smn_pagos.smn_nota_entrada
where
	smn_nota_entrada_op_id = ${fld:id}
