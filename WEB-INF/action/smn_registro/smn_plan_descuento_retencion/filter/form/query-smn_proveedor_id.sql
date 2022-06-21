select smn_base.smn_auxiliar.smn_auxiliar_id as id, smn_base.smn_auxiliar.aux_codigo ||' - '|| smn_base.smn_auxiliar.aux_descripcion as item 
from smn_base.smn_auxiliar, smn_compras.smn_proveedor
where smn_compras.smn_proveedor.smn_auxiliar_rf = smn_base.smn_auxiliar.smn_auxiliar_id