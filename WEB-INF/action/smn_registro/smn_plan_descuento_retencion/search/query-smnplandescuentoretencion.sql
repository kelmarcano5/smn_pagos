select
	smn_pagos.smn_plan_descuento_retencion.smn_plan_descuento_retencion_id,
	(select smn_base.smn_auxiliar.aux_codigo ||' - '|| smn_base.smn_auxiliar.aux_descripcion from  smn_base.smn_auxiliar where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_pagos.smn_plan_descuento_retencion.smn_proveedor_id) as smn_proveedor_id_combo,
	(select smn_base.smn_descuento.dct_codigo ||'-'|| smn_base.smn_descuento.dct_nombre from smn_base.smn_descuento where smn_base.smn_descuento.smn_descuento_id is not null  and smn_base.smn_descuento.smn_descuento_id=smn_pagos.smn_plan_descuento_retencion.smn_descuento_retencion_rf) as smn_descuento_retencion_rf_combo,
	case
		when smn_pagos.smn_plan_descuento_retencion.pdr_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_plan_descuento_retencion.pdr_estatus='IN' then '${lbl:b_inactive}'
	end as pdr_estatus_combo,
	smn_pagos.smn_plan_descuento_retencion.smn_proveedor_id,
	smn_pagos.smn_plan_descuento_retencion.pdr_fecha_desde,
	smn_pagos.smn_plan_descuento_retencion.pdr_fecha_hasta,
	smn_pagos.smn_plan_descuento_retencion.smn_descuento_retencion_rf,
	smn_pagos.smn_plan_descuento_retencion.pdr_estatus,
	smn_pagos.smn_plan_descuento_retencion.pdr_fecha_registro

from 
	smn_pagos.smn_plan_descuento_retencion
