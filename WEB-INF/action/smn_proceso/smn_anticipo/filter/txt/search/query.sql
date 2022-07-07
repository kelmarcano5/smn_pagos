select smn_anticipo_id,
	smn_compras.smn_orden_compra_cabecera.occ_orden_compra_numero ||' - '|| smn_compras.smn_orden_compra_cabecera.occ_descripcion as smn_orden_compra_rf,
	smn_base.smn_entidades.ent_codigo ||'-'|| smn_base.smn_entidades.ent_descripcion_corta as smn_entidad_rf,
	(select smn_base.smn_auxiliar.aux_descripcion as item  from smn_base.smn_usuarios
		inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_base.smn_usuarios.smn_auxiliar_rf
		inner join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
		inner join smn_pagos.smn_rol on smn_pagos.smn_rol.smn_usuario_rf = smn_base.smn_usuarios.smn_usuarios_id
		where smn_pagos.smn_rol.rol_tipo='SO' and smn_base.smn_usuarios.smn_usuarios_id = smn_pagos.smn_anticipo.smn_usuario_solicitante_rf) as smn_usuario_solicitante_rf,
	(select smn_base.smn_auxiliar.aux_descripcion as item  from smn_base.smn_usuarios
		inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_base.smn_usuarios.smn_auxiliar_rf
		inner join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
		inner join smn_pagos.smn_rol on smn_pagos.smn_rol.smn_usuario_rf = smn_base.smn_usuarios.smn_usuarios_id
		where smn_pagos.smn_rol.rol_tipo='AP' and smn_base.smn_usuarios.smn_usuarios_id = smn_pagos.smn_anticipo.smn_usuario_aprobador_rf) as smn_usuario_aprobador_rf,
	smn_base.smn_sucursales.suc_codigo ||'-'|| smn_base.smn_sucursales.suc_nombre as smn_sucursal_rf,
	(select smn_base.smn_auxiliar.aux_codigo ||' - '|| smn_base.smn_auxiliar.aux_descripcion as item from smn_compras.smn_proveedor
		inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_compras.smn_proveedor.smn_auxiliar_rf
		where smn_compras.smn_proveedor.smn_proveedor_id = smn_pagos.smn_anticipo.smn_proveedor_rf) as smn_proveedor_rf,
	smn_pagos.smn_documento.doc_codigo ||'-'|| smn_pagos.smn_documento.doc_descripcion as smn_documento_id,
	ant_numero_documento,
	ant_porcentaje,
	ant_monto_ml,
	smn_base.smn_monedas.mon_codigo ||'-'|| smn_base.smn_monedas.mon_nombre as smn_moneda_rf,
	smn_base.smn_tasas_de_cambio.tca_tasa_cambio ||'-'|| smn_base.smn_tasas_de_cambio.tca_descripcion as smn_tasa_rf,
	ant_monto_ma,
	case
		when smn_pagos.smn_anticipo.ant_estatus='GE' then '${lbl:b_generated}'
		when smn_pagos.smn_anticipo.ant_estatus='PL' then '${lbl:b_planned}'
		when smn_pagos.smn_anticipo.ant_estatus='PA' then '${lbl:b_paid}'
		when smn_pagos.smn_anticipo.ant_estatus='DS' then '${lbl:b_descontado}'
	end as ant_estatus
from smn_pagos.smn_anticipo
inner join smn_compras.smn_orden_compra_cabecera on smn_compras.smn_orden_compra_cabecera.smn_orden_compra_cabecera_id = smn_pagos.smn_anticipo.smn_orden_compra_rf
inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_pagos.smn_anticipo.smn_entidad_rf
left join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_pagos.smn_anticipo.smn_sucursal_rf
inner join smn_pagos.smn_documento on smn_pagos.smn_documento.smn_documento_id = smn_pagos.smn_anticipo.smn_documento_id
left join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_pagos.smn_anticipo.smn_moneda_rf
left join smn_base.smn_tasas_de_cambio on smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id = smn_pagos.smn_anticipo.smn_tasa_rf