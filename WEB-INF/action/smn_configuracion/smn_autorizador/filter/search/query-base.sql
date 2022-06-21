select	
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_autorizador.smn_usuario_rf) as smn_usuario_rf_combo,
	(select smn_base.smn_entidades.ent_codigo ||'-'||smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_pagos.smn_autorizador.smn_entidades_rf) as smn_entidades_rf_combo,
	case
		when smn_pagos.smn_autorizador.aut_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_autorizador.aut_estatus='IN' then '${lbl:b_inactive}'
	end as aut_estatus_combo,
	smn_pagos.smn_autorizador.smn_usuario_rf,
	smn_pagos.smn_autorizador.smn_entidades_rf,
	smn_pagos.smn_autorizador.aut_estatus,
	smn_pagos.smn_autorizador.aut_fecha_registro,
	smn_pagos.smn_autorizador.smn_autorizador_id

from
	smn_pagos.smn_autorizador
where
	smn_autorizador_id is not null	
 	 	${filter}
order by 
	smn_autorizador_id
