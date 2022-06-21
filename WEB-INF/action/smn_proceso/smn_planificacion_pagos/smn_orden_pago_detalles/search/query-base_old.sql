SELECT
	smn_orden_pago_id AS smn_orden_pago,
	smn_pagos.smn_orden_pago.smn_entidades_rf AS smn_entidad,
	smn_pagos.smn_orden_pago.smn_sucursales_rf AS smn_sucursal,
	smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf AS smn_clase_auxiliar,
	smn_base.smn_entidades.ent_codigo || '-' || smn_base.smn_entidades.ent_descripcion_corta AS smn_entidades_rf,
	smn_base.smn_sucursales.suc_codigo || '-' || smn_base.smn_sucursales.suc_nombre AS smn_sucursales_rf,
	smn_base.smn_clase_auxiliar.cla_codigo || '-' || smn_base.smn_clase_auxiliar.cla_nombre AS smn_clase_auxiliar_rf,
	clf_descripcion,
	smn_compras.smn_proveedor.smn_clasificacion_abc_rf,
	opa_saldo_factura_ml AS monto_a_pagar,
	opa_estatus_financiero,
	CASE
		WHEN  (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') > 7 THEN -- Por vence mayor a 7 dias
			opa_saldo_factura_ml
	END AS monto_por_vencer_mayor_7,

	CASE 
	  WHEN  (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') < 7 and (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') > -1 then -- Por vencer menos a 7 dias
			opa_saldo_factura_ml --AS monto_por_vencer_menor_7
	END AS monto_por_vencer_menor_7,

	CASE 
	  when (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') < 0 and (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') > -8 then  -- Vencidos menor de 1 a 7
			opa_saldo_factura_ml 
	end AS monto_vencido_menor_7,

	CASE 
	  when (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') < -7 and (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') > -16 then -- Vencidos menor de 8 a 15
			opa_saldo_factura_ml --AS monto_por_vencer_menor_7
	end AS monto_vencido_8_15,

	CASE 
	 when (opa_fecha_vencimiento) - to_date(${fld:opa_fecha_plan}, 'DD-MM-YYYY') < -15 then -- Vencidos mayor de 15
			opa_saldo_factura_ml --AS monto_por_vencer_menor_7
	END AS monto_vencido_mayor_15
FROM
	smn_pagos.smn_orden_pago
	INNER JOIN smn_base.smn_entidades ON smn_base.smn_entidades.smn_entidades_id = smn_pagos.smn_orden_pago.smn_entidades_rf
	LEFT JOIN smn_base.smn_sucursales ON smn_base.smn_sucursales.smn_sucursales_id = smn_pagos.smn_orden_pago.smn_sucursales_rf
	INNER JOIN smn_base.smn_clase_auxiliar ON smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf
	INNER JOIN smn_base.smn_auxiliar ON smn_base.smn_auxiliar.smn_auxiliar_id = smn_pagos.smn_orden_pago.smn_auxiliar_rf
	LEFT JOIN smn_compras.smn_proveedor ON  smn_compras.smn_proveedor.smn_auxiliar_rf = smn_base.smn_auxiliar.smn_auxiliar_id
	LEFT JOIN smn_base.smn_clasificacion_abc ON smn_base.smn_clasificacion_abc.smn_clasificacion_abc_id = smn_compras.smn_proveedor.smn_clasificacion_abc_rf
where
	smn_orden_pago_id is not null
	AND smn_entidades_rf=${fld:id1}
AND smn_sucursales_rf=${fld:id2}
AND smn_pagos.smn_orden_pago.smn_clase_auxiliar_rf=${fld:id3}
AND smn_clasificacion_abc_rf=${fld:id4}
AND opa_estatus_financiero=${fld:id5}
