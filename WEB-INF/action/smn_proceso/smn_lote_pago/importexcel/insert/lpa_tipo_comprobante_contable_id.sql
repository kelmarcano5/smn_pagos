select 
	smn_cont_financiera.smn_tipo_comprobante.smn_tipo_comprobante_id as lpa_tipo_comprobante_contable_id_ref 
from   
	smn_cont_financiera.smn_tipo_comprobante 
where  
	upper(smn_cont_financiera.smn_tipo_comprobante.tic_nombre) = upper(${fld:lpa_tipo_comprobante_contable_id_desc})
