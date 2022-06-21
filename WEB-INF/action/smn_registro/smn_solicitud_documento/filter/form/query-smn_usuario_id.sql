select smn_base.smn_v_usuarios.smn_usuarios_id as id,  smn_base.smn_v_usuarios.usr_nombres as item 
from smn_base.smn_v_usuarios, smn_pagos.smn_rol
where smn_base.smn_v_usuarios.smn_usuarios_id=smn_pagos.smn_rol.smn_usuario_rf and (smn_pagos.smn_rol.rol_tipo = 'BU' OR smn_pagos.smn_rol.rol_tipo = 'AM')