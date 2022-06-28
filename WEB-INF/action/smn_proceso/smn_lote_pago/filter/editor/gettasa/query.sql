select 
	smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id as id, 
	smn_base.smn_tasas_de_cambio.tca_fecha_vigencia ||' TASA: '|| smn_base.smn_tasas_de_cambio.tca_descripcion as item,  
	smn_base.smn_tasas_de_cambio.tca_tasa_cambio as tasa_cambio 
from 
	smn_base.smn_tasas_de_cambio 
	left outer join 
	smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_tasas_de_cambio.smn_monedas_id
where 
	smn_base.smn_tasas_de_cambio.smn_monedas_id=${fld:id} 
	
	and
	smn_base.smn_tasas_de_cambio.tca_fecha_vigencia <> current_date
	and
	smn_base.smn_tasas_de_cambio.tca_estatus IN ('AC')
ORDER BY
	smn_base.smn_tasas_de_cambio.tca_fecha_vigencia DESC
