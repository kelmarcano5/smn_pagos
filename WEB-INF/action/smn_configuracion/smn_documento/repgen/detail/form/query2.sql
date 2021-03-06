select
		smn_pagos.smn_documento.smn_persona_id,
	smn_pagos.smn_documento.doc_categoria,
	smn_pagos.smn_documento.doc_tipo_documento,
	smn_pagos.smn_documento.doc_codigo,
	smn_pagos.smn_documento.doc_descripcion,
	smn_pagos.smn_documento.doc_fecha_emision,
	smn_pagos.smn_documento.doc_fecha_venc,
	smn_pagos.smn_documento.doc_filename,
	smn_pagos.smn_documento.doc_content_type,
	smn_pagos.smn_documento.doc_image_size,
	smn_pagos.smn_documento.doc_image_data,
	smn_pagos.smn_documento.doc_verificado,
	smn_pagos.smn_documento.doc_observ_verif,
	smn_pagos.smn_documento.doc_aprobado,
	smn_pagos.smn_documento.doc_observ_aprob,
	smn_pagos.smn_documento.doc_fecha_registro,
	smn_pagos.smn_documento.smn_documentos_generales_rf,
	smn_pagos.smn_documento.smn_tipo_documento_id,
	smn_pagos.smn_documento.smn_modulo_origen_rf,
	smn_pagos.smn_documento.doc_codigo,
	smn_pagos.smn_documento.doc_descripcion,
	smn_pagos.smn_documento.doc_ver_recepcion_item,
	smn_pagos.smn_documento.doc_ver_recepcion_servicio,
	smn_pagos.smn_documento.doc_ver_orden_compra,
	smn_pagos.smn_documento.doc_ver_control_documento,
	smn_pagos.smn_documento.doc_porcentaje,
	smn_pagos.smn_documento.doc_monto_fijo,
	smn_pagos.smn_documento.doc_estatus,
	smn_pagos.smn_documento.doc_vigencia,
	smn_pagos.smn_documento.doc_fecha_registro
from
	smn_pagos.smn_documento
where
	smn_pagos.smn_documento.smn_documento_id = ${fld:id}
