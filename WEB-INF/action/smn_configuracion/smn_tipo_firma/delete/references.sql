SELECT
    COALESCE(
        (SELECT
            smn_pagos.smn_firmas_cuentas.smn_tipo_firma_id  
        FROM  
            smn_pagos.smn_firmas_cuentas
        WHERE  
            smn_pagos.smn_firmas_cuentas.smn_tipo_firma_id = ${fld:id}
        LIMIT
            1
    ), 0) as refid