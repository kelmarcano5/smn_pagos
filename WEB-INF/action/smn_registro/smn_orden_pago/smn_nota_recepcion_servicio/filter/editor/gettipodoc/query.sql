SELECT smn_cont_financiera.smn_documento.smn_documento_id as id,  smn_cont_financiera.smn_documento.doc_numero_documento as item
from smn_cont_financiera.smn_documento
where smn_cont_financiera.smn_documento.smn_tipo_documento_id=${fld:id}
   