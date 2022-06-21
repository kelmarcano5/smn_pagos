select
	(select smn_base.smn_auxiliar.aux_codigo ||' - '|| smn_base.smn_auxiliar.aux_descripcion from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_plan_descuento_retencion.smn_proveedor_id) as smn_proveedor_id_combo,
	(select smn_base.smn_descuentos_retenciones.dyr_codigo ||' - '|| smn_base.smn_descuentos_retenciones.dyr_descripcion from smn_base.smn_descuentos_retenciones where smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id is not null  and smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=smn_pagos.smn_plan_descuento_retencion.smn_descuento_retencion_rf) as smn_descuento_retencion_rf_combo,
	case
		when smn_pagos.smn_plan_descuento_retencion.pdr_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_plan_descuento_retencion.pdr_estatus='IN' then '${lbl:b_inactive}'
	end as pdr_estatus_combo,
	smn_pagos.smn_plan_descuento_retencion.*
from 
	smn_pagos.smn_plan_descuento_retencion
where
	smn_plan_descuento_retencion_id = ${fld:id}
