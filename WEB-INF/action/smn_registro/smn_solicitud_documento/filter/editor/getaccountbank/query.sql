SELECT 
smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id as id,
smn_base.smn_cuentas_bancarias.cba_nro_cuenta as item 
from smn_base.smn_cuentas_bancarias
where smn_base.smn_cuentas_bancarias.cba_entidades_financieras=${fld:id}

