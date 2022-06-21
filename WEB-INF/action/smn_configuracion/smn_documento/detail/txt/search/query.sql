select
	smn_pagos.smn_tipo_documento.smn_tipo_documento_id,
	smn_pagos.smn_tipo_documento.tdo_codigo as tdo_codigo_pl0,
	(select smn_base.smn_documentos_generales.dcg_codigo ||'-'|| smn_base.smn_documentos_generales.dcg_descripcion from  smn_base.smn_documentos_generales where smn_base.smn_documentos_generales.smn_documentos_generales_id is not null  and smn_base.smn_documentos_generales.smn_documentos_generales_id=smn_pagos.smn_documento.smn_documentos_generales_rf) as smn_documentos_generales_rf_combo,
	(select smn_pagos.smn_tipo_documento.tdo_codigo ||'-'||smn_pagos.smn_tipo_documento.tdo_descripcion from  smn_pagos.smn_tipo_documento where smn_pagos.smn_tipo_documento.smn_tipo_documento_id is not null  and smn_pagos.smn_tipo_documento.smn_tipo_documento_id=smn_pagos.smn_documento.smn_tipo_documento_id) as smn_tipo_documento_id_combo,
	(select smn_base.smn_modulos.mod_codigo ||'-'|| smn_base.smn_modulos.mod_nombre from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_pagos.smn_documento.smn_modulo_origen_rf) as smn_modulo_origen_rf_combo,
	case
		when smn_pagos.smn_documento.doc_ver_recepcion_item='SI' then '${lbl:b_yes}'
		when smn_pagos.smn_documento.doc_ver_recepcion_item='NO' then '${lbl:b_no}'
	end as doc_ver_recepcion_item_combo,
	case
		when smn_pagos.smn_documento.doc_ver_recepcion_servicio='SI' then '${lbl:b_yes}'
		when smn_pagos.smn_documento.doc_ver_recepcion_servicio='NO' then '${lbl:b_no}'
	end as doc_ver_recepcion_servicio_combo,
	case
		when smn_pagos.smn_documento.doc_ver_orden_compra='SI' then '${lbl:b_yes}'
		when smn_pagos.smn_documento.doc_ver_orden_compra='NO' then '${lbl:b_no}'
	end as doc_ver_orden_compra_combo,
	case
		when smn_pagos.smn_documento.doc_ver_control_documento='SI' then '${lbl:b_yes}'
		when smn_pagos.smn_documento.doc_ver_control_documento='NO' then '${lbl:b_no}'
	end as doc_ver_control_documento_combo,
	case
		when smn_pagos.smn_documento.doc_estatus='AC' then '${lbl:b_active}'
		when smn_pagos.smn_documento.doc_estatus='IN' then '${lbl:b_inactive}'
	end as doc_estatus_combo,
	smn_pagos.smn_documento.*
from
	smn_pagos.smn_tipo_documento,
	smn_pagos.smn_documento
where
	smn_pagos.smn_tipo_documento.smn_tipo_documento_id=smn_pagos.smn_documento.smn_tipo_documento_id
 and
	smn_documento_id = ${fld:id}
