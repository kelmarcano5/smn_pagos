SELECT
    COALESCE(
        (select smn_pagos.smn_tipo_documento.smn_tipo_documento_id
from smn_pagos.smn_tipo_documento
where smn_pagos.smn_tipo_documento.smn_tipo_documento_id=${fld:id} and smn_pagos.smn_tipo_documento.tdo_tipo_movimiento = 'GP'
        LIMIT
            1
    ), 0) as refid