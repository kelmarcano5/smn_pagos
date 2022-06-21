select
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_rol.smn_usuario_rf) as smn_usuario_rf_combo,
	case
		when smn_pagos.smn_rol.rol_tipo='SO' then '${lbl:b_applicant}'
		when smn_pagos.smn_rol.rol_tipo='AP' then '${lbl:b_aprobador}'
		when smn_pagos.smn_rol.rol_tipo='AM' then '${lbl:b_all_message}'
		when smn_pagos.smn_rol.rol_tipo='BU' then '${lbl:b_search}'
	end as rol_tipo_combo,
	(select smn_base.smn_corporaciones.crp_codigo ||'-'|| smn_base.smn_corporaciones.crp_nombre from  smn_base.smn_corporaciones where smn_base.smn_corporaciones.smn_corporaciones_id is not null  and smn_base.smn_corporaciones.smn_corporaciones_id=smn_pagos.smn_rol.smn_corporaciones_rf) as smn_corporaciones_rf_combo,
	(select smn_base.smn_entidades.ent_codigo ||'-'|| smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_pagos.smn_rol.smn_entidades_rf) as smn_entidades_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo ||'-'|| smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_pagos.smn_rol.smn_sucursales_rf) as smn_sucursales_rf_combo,
	(select smn_base.smn_areas_servicios.ase_codigo ||'-'|| smn_base.smn_areas_servicios.ase_descripcion from  smn_base.smn_areas_servicios where smn_base.smn_areas_servicios.smn_areas_servicios_id is not null  and smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_pagos.smn_rol.smn_areas_servicios_rf) as smn_areas_servicios_rf_combo,
	(select smn_base.smn_unidades_servicios.uns_codigo ||'-'|| smn_base.smn_unidades_servicios.uns_descripcion from  smn_base.smn_unidades_servicios where smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null  and smn_base.smn_unidades_servicios.smn_unidades_servicios_id=smn_pagos.smn_rol.smn_unidades_servicios_rf) as smn_unidades_servicios_rf_combo,
	(select smn_base.smn_estructura_organizacional.eor_codigo ||'-'|| smn_base.smn_estructura_organizacional.eor_nombre from  smn_base.smn_estructura_organizacional where smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id is not null  and smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id=smn_pagos.smn_rol.smn_estructura_organizacional_rf) as smn_estructura_organizacional_rf_combo,
	case
		when smn_pagos.smn_rol.rol_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_rol.rol_estatus='IN' then '${lbl:b_inactive}'
	end as rol_estatus_combo,
	smn_pagos.smn_rol.*
from 
	smn_pagos.smn_rol
where
	smn_rol_id = ${fld:id}
