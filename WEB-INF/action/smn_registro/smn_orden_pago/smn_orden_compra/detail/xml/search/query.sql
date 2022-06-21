select
	smn_pagos.smn_orden_compra.smn_orden_compra_op_id,
	(select smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion from  smn_pagos.smn_documento where smn_pagos.smn_documento.smn_documento_id is not null  and smn_pagos.smn_documento.smn_documento_id=smn_pagos.smn_orden_compra.smn_documento_rf) as smn_documento_rf_combo,
	(select smn_base.smn_clase_auxiliar.cla_codigo ||'-'|| smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_pagos.smn_orden_compra.smn_clase_rf) as smn_clase_rf_combo,
	(select smn_base.smn_auxiliar.aux_codigo ||'-'|| smn_base.smn_auxiliar.aux_nombres from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_orden_compra.smn_proveedor_id) as smn_proveedor_id_combo,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_orden_compra.smn_usuario_rf) as smn_usuario_rf_combo,
	(select smn_base.smn_monedas.mon_codigo ||'-'|| smn_base.smn_monedas.mon_nombre from  smn_base.smn_monedas where smn_base.smn_monedas.smn_monedas_id is not null  and smn_base.smn_monedas.smn_monedas_id=smn_pagos.smn_orden_compra.smn_moneda_rf) as smn_moneda_rf_combo,
	case
		when smn_pagos.smn_orden_compra.ocp_estatus='GE' then '${lbl:b_ocp_generated}'
		when smn_pagos.smn_orden_compra.ocp_estatus='PU' then '${lbl:b_ocp_partially_used}'
		when smn_pagos.smn_orden_compra.ocp_estatus='US' then '${lbl:b_ocp_used}'
	end as ocp_estatus_combo,
	smn_pagos.smn_orden_compra.*
from 
	smn_pagos.smn_orden_compra
where
	smn_orden_compra_op_id = ${fld:id}
