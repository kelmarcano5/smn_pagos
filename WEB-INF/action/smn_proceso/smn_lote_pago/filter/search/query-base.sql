select
    smn_pagos.smn_lote_pago.smn_lote_pago_id,
    smn_base.smn_entidades_financieras.efi_nombre as smn_entidad_financiera_rf,
    smn_base.smn_cuentas_bancarias.cba_nombre as smn_cuenta_bancaria_rf,
    smn_base.smn_formas_pago.fop_descripcion as smn_forma_pago_rf,
    smn_pagos.smn_documento.doc_descripcion as smn_documento_id,
	case
	when smn_pagos.smn_lote_pago.smn_estatus_documento='RE' then '${lbl:b_re} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='AP' then '${lbl:b_ap} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='EM' then '${lbl:b_em} '
	when smn_pagos.smn_lote_pago.smn_estatus_documento='CE' then '${lbl:b_ce}'
	end as smn_estatus_documento,
	smn_pagos.smn_lote_pago.lpa_numero_lote,
	smn_pagos.smn_lote_pago.lpa_descripcion_lote,
	smn_pagos.smn_lote_pago.lpa_fecha_lote,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ml,
	smn_pagos.smn_lote_pago.lpa_monto_lote_ma,
	smn_pagos.smn_lote_pago.lpa_fecha_registro
from
	smn_pagos.smn_lote_pago
INNER JOIN smn_base.smn_entidades_financieras on smn_base.smn_entidades_financieras.smn_entidades_financieras_id = smn_pagos.smn_lote_pago.smn_entidad_financiera_rf
INNER JOIN smn_base.smn_cuentas_bancarias on smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id = smn_pagos.smn_lote_pago.smn_cuenta_bancaria_rf
INNER JOIN smn_base.smn_formas_pago on smn_base.smn_formas_pago.smn_formas_pago_id = smn_pagos.smn_lote_pago.smn_forma_pago_rf
INNER JOIN smn_pagos.smn_documento on smn_pagos.smn_documento.smn_documento_id = smn_pagos.smn_lote_pago.smn_documento_id
where
	smn_lote_pago_id is not null
	${filter}
order by
		smn_lote_pago_id
