select
	distinct smn_pagos.smn_orden_compra.smn_orden_compra_op_id,
	(select smn_base.smn_documentos_generales.dcg_codigo ||'-'|| smn_base.smn_documentos_generales.dcg_descripcion from  smn_base.smn_documentos_generales where smn_base.smn_documentos_generales.smn_documentos_generales_id is not null  and smn_base.smn_documentos_generales.smn_documentos_generales_id=smn_pagos.smn_orden_compra.smn_documento_rf) as smn_documento_rf_combo,
	(select smn_base.smn_auxiliar.aux_codigo ||'-'|| smn_base.smn_auxiliar.aux_nombres from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_orden_compra.smn_proveedor_id) as smn_proveedor_id_combo,
	case
		when smn_pagos.smn_orden_compra.ocp_estatus='GE' then '${lbl:b_ocp_generated}'
		when smn_pagos.smn_orden_compra.ocp_estatus='PU' then '${lbl:b_ocp_partially_used}'
		when smn_pagos.smn_orden_compra.ocp_estatus='US' then '${lbl:b_ocp_used}'
	end as ocp_estatus_combo,
	smn_pagos.smn_orden_compra.smn_documento_rf,
	smn_pagos.smn_orden_compra.smn_numero_documento_rf,
	smn_pagos.smn_orden_compra.smn_proveedor_id,
	smn_pagos.smn_orden_compra.ocp_monto_ml,
	smn_pagos.smn_orden_compra.ocp_monto_saldo_ml,
	smn_pagos.smn_orden_compra.ocp_estatus,
	smn_pagos.smn_orden_compra.ocp_fecha_registro
	
from
	smn_pagos.smn_orden_compra,
	smn_pagos.smn_rel_orden_pago_oc	
where
	smn_pagos.smn_rel_orden_pago_oc.smn_orden_pago_id = ${fld:id_orden_pago} and
	smn_pagos.smn_orden_compra.smn_orden_compra_op_id=smn_pagos.smn_rel_orden_pago_oc.smn_orden_compra_id and
	smn_orden_compra_op_id is not null
	${filter}
order by
		smn_orden_compra_op_id
