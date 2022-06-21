select	
	smn_pagos.smn_autorizador_firmas_cuentas.smn_aut_firmas_cuentas_id,
	(select smn_base.smn_v_usuarios.usr_nombres from  smn_base.smn_v_usuarios, smn_pagos.smn_autorizador where smn_pagos.smn_autorizador.smn_autorizador_id is not null  and smn_pagos.smn_autorizador.smn_autorizador_id=smn_pagos.smn_autorizador_firmas_cuentas.smn_autorizador_id and smn_pagos.smn_autorizador.smn_usuario_rf = smn_base.smn_v_usuarios.smn_usuarios_id) as smn_autorizador_id_combo,
	(select smn_base.smn_entidades_financieras.efi_codigo ||'-'|| smn_base.smn_entidades_financieras.efi_nombre from  smn_base.smn_entidades_financieras where smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null  and smn_base.smn_entidades_financieras.smn_entidades_financieras_id=smn_pagos.smn_autorizador_firmas_cuentas.smn_entidades_financieras_rf) as smn_entidades_financieras_rf_combo,
	(select smn_pagos.smn_tipo_firma.tfi_codigo ||'-'|| smn_pagos.smn_tipo_firma.tfi_descripcion from  smn_pagos.smn_tipo_firma where smn_pagos.smn_tipo_firma.smn_tipo_firma_id is not null  and smn_pagos.smn_tipo_firma.smn_tipo_firma_id=smn_pagos.smn_autorizador_firmas_cuentas.smn_tipo_firma_id) as smn_tipo_firma_id_combo,
	case
		when smn_pagos.smn_autorizador_firmas_cuentas.fcb_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_autorizador_firmas_cuentas.fcb_estatus='IN' then '${lbl:b_inactive}'
	end as fcb_estatus_combo,
	smn_pagos.smn_autorizador_firmas_cuentas.*
from
	smn_pagos.smn_autorizador,
	smn_pagos.smn_tipo_firma,
	smn_pagos.smn_autorizador_firmas_cuentas 
where
	smn_pagos.smn_autorizador.smn_autorizador_id=smn_pagos.smn_autorizador_firmas_cuentas.smn_autorizador_id and
	smn_pagos.smn_tipo_firma.smn_tipo_firma_id=smn_pagos.smn_autorizador_firmas_cuentas.smn_tipo_firma_id 
 and 
	smn_aut_firmas_cuentas_id = ${fld:id}
