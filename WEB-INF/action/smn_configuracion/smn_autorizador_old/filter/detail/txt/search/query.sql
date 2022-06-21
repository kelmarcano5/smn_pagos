select
	
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios where smn_base.smn_v_usuarios.smn_usuarios_id is not null  and smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_autorizador.smn_usuario_rf) as smn_usuario_rf_combo,
	(select smn_base.smn_entidades.ent_codigo ||'-'||smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_pagos.smn_autorizador.smn_entidades_rf) as smn_entidades_rf_combo,
	(select smn_base.smn_sucursales.suc_codigo ||'-'||smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_pagos.smn_autorizador.smn_sucursales_rf) as smn_sucursales_rf_combo,
	case
		when smn_pagos.smn_autorizador.aut_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_autorizador.aut_estatus='IN' then '${lbl:b_inactive}'
	end as aut_estatus_combo,
	smn_pagos.smn_autorizador.*
from 
	smn_pagos.smn_autorizador
where
	smn_autorizador_id = ${fld:id}
