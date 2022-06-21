select	
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_rol.smn_usuario_rf) as smn_usuario_rf_combo,
	case
		when smn_pagos.smn_rol.rol_tipo='SO' then '${lbl:b_applicant}'
		when smn_pagos.smn_rol.rol_tipo='AP' then '${lbl:b_aprobador}'
		when smn_pagos.smn_rol.rol_tipo='AM' then '${lbl:b_all_message}'
		when smn_pagos.smn_rol.rol_tipo='BU' then '${lbl:b_search}'
	end as rol_tipo_combo,
	smn_pagos.smn_rol.smn_usuario_rf,
	smn_pagos.smn_rol.rol_estatus,
	smn_pagos.smn_rol.rol_fecha_registro,
	smn_pagos.smn_rol.smn_rol_id

from
	smn_pagos.smn_rol
where
	smn_rol_id is not null	
 	 	${filter}
order by 
	smn_rol_id