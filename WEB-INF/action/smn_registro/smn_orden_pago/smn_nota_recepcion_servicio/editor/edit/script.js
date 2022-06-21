setComboValue('smn_orden_compra_rf','${fld:smn_orden_compra_rf}','form1');
setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
setComboValue('smn_tipo_documento_rf','${fld:smn_tipo_documento_rf}','form1');
setComboValue('smn_documento_rf','${fld:smn_documento_rf}','form1');
document.form1.smn_numero_documento_rf.value='${fld:smn_numero_documento_rf}';
setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
setComboValue('smn_clase_rf','${fld:smn_clase_rf}','form1');
setComboValue('smn_proveedor_id','${fld:smn_proveedor_id}','form1');
setComboValue('smn_usuario_rf','${fld:smn_usuario_rf}','form1');
document.form1.nrs_monto_saldo_ml.value=parseFloat('${fld:nrs_monto_saldo_ml}');
document.form1.nrs_monto_saldo_ma.value=parseFloat('${fld:nrs_monto_saldo_ma}');
document.form1.nrs_monto_ml.value=parseFloat('${fld:nrs_monto_ml}');
document.form1.nrs_monto_ma.value='${fld:nrs_monto_ma}';
document.form1.smn_moneda_rf.value='${fld:smn_moneda_rf}';
document.form1.nrs_monto_usado_ml.value=parseFloat('${fld:nrs_monto_usado_ml}');
document.form1.nrs_monto_usado_ma.value='${fld:nrs_monto_usado_ma}';
setComboValue('nrs_estatus','${fld:nrs_estatus}','form1');
document.form1.id.value='${fld:smn_nota_recepcion_servicio_id}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

