select distinct smn_pagos.smn_rol.smn_rol_id as id,  smn_base.smn_v_usuarios.usr_nombres as item 
from smn_pagos.smn_rol, smn_base.smn_v_usuarios, smn_pagos.smn_rel_rol_documento
where smn_pagos.smn_rol.rol_tipo = 'SO' and smn_pagos.smn_rol.smn_usuario_rf = smn_base.smn_v_usuarios.smn_usuarios_id and smn_pagos.smn_rol.smn_rol_id = smn_pagos.smn_rel_rol_documento.smn_rol_id  