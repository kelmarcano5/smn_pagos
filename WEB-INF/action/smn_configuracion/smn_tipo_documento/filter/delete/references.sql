SELECT
    COALESCE(
        (SELECT
            smn_pagos.smn_documento.smn_tipo_documento_id  
        FROM  
            smn_pagos.smn_documento
        WHERE  
            smn_pagos.smn_documento.smn_tipo_documento_id = ${fld:id}
        LIMIT
            1
    ), 0) as refid