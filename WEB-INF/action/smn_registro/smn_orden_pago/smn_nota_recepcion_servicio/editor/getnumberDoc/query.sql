SELECT smn_cont_financiera.smn_documento.doc_numero_documento as numero,  smn_cont_financiera.smn_documento.doc_monto_ml as montoml, smn_cont_financiera.smn_documento.doc_monto_me as montoma 
from smn_cont_financiera.smn_documento
where smn_cont_financiera.smn_documento.smn_documento_id=${fld:id}
   