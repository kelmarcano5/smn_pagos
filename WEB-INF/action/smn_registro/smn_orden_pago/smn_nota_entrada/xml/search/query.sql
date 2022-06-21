select
	smn_pagos.smn_nota_entrada.smn_nota_entrada_op_id,
	(select smn_cont_financiera.smn_documentos_contables_det.mdd_desc_registro from  smn_cont_financiera.smn_documentos_contables_det where smn_cont_financiera.smn_documentos_contables_det.smn_documentos_contables_id is not null  and smn_cont_financiera.smn_documentos_contables_det.smn_documentos_contables_id=smn_pagos.smn_nota_entrada.smn_documento_rf) as smn_documento_rf_combo,
	(select smn_base.smn_auxiliar.aux_codigo from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_nota_entrada.smn_proveedor_id) as smn_proveedor_id_combo,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.usr_nombres is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_nota_entrada.smn_usuario_rf) as smn_usuario_rf_combo,
	
	case
		when smn_pagos.smn_nota_entrada.ocp_estatus='GE' then '${lbl:b_ocp_generated}'
		when smn_pagos.smn_nota_entrada.ocp_estatus='PU' then '${lbl:b_ocp_partially_used}'
		when smn_pagos.smn_nota_entrada.ocp_estatus='US' then '${lbl:b_ocp_used}'
	end as ocp_estatus_combo,
	smn_pagos.smn_nota_entrada.smn_documento_rf,
	smn_pagos.smn_nota_entrada.smn_numero_documento_rf,
	smn_pagos.smn_nota_entrada.smn_proveedor_id,
	smn_pagos.smn_nota_entrada.smn_usuario_rf,
	smn_pagos.smn_nota_entrada.nep_monto_ml,
	smn_pagos.smn_nota_entrada.nep_monto_usado_ml,
	smn_pagos.smn_nota_entrada.nep_monto_saldo_ml,
	smn_pagos.smn_nota_entrada.ocp_estatus,
	smn_pagos.smn_nota_entrada.nep_fecha_registro

from 
	smn_pagos.smn_nota_entrada,
	smn_pagos.smn_rel_orden_pago_ne
where
	smn_pagos.smn_rel_orden_pago_ne.smn_orden_pago_id = ${fld:id_orden_pago} and
	smn_pagos.smn_rel_orden_pago_ne.smn_nota_entrada_op_id=smn_pagos.smn_nota_entrada.smn_nota_entrada_op_id
	
