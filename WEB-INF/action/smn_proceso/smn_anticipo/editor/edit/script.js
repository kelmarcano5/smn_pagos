//setComboValue('smn_entidad_rf','${fld:smn_entidad_rf}','form1');
setDataSelect2('smn_entidad_rf','${fld:smn_entidad_rf}');
//setComboValue('smn_sucursal_rf','${fld:smn_sucursal_rf}','form1');
setDataSelect2('smn_sucursal_rf','${fld:smn_sucursal_rf}');
//setComboValue('smn_proveedor_rf','${fld:smn_proveedor_rf}','form1');
setDataSelect2('smn_proveedor_rf','${fld:smn_proveedor_rf}');
//setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
setDataSelect2('smn_documento_id','${fld:smn_documento_id}');
document.form1.ant_numero_documento.value='${fld:ant_numero_documento@#,###,###}';
//setComboValue('smn_orden_compra_rf','${fld:smn_orden_compra_rf}','form1');
setDataSelect2('smn_orden_compra_rf','${fld:smn_orden_compra_rf}','form1');
document.form1.ant_porcentaje.value='${fld:ant_porcentaje@#,###,##0.00}';
document.form1.ant_monto_ml.value='${fld:ant_monto_ml@#,###,##0.00}';
document.form1.ant_monto_ma.value='${fld:ant_monto_ma@#,###,##0.00}';
//setComboValue('ant_estatus','${fld:ant_estatus}','form1');
setDataSelect2('ant_estatus','${fld:ant_estatus}');
//setComboValue('smn_usuario_solicitante_rf','${fld:smn_usuario_solicitante_rf}','form1');
setDataSelect2('smn_usuario_solicitante_rf','${fld:smn_usuario_solicitante_rf}');
//setComboValue('smn_usuario_aprobador_rf','${fld:smn_usuario_aprobador_rf}','form1');
setDataSelect2('smn_usuario_aprobador_rf','${fld:smn_usuario_aprobador_rf}');
//setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');
setDataSelect2('smn_moneda_rf','${fld:smn_moneda_rf}');
//setComboValue('smn_tasa_rf','${fld:smn_tasa_rf}','form1');
setDataSelect2('smn_tasa_rf','${fld:smn_tasa_rf}');
document.form1.id.value='${fld:smn_anticipo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

