select smn_pagos.smn_autorizador.smn_autorizador_id as id, smn_base.smn_v_usuarios.usr_nombres as item 
from smn_base.smn_v_usuarios, smn_pagos.smn_autorizador
where smn_pagos.smn_autorizador.smn_usuario_rf = smn_base.smn_v_usuarios.smn_usuarios_id