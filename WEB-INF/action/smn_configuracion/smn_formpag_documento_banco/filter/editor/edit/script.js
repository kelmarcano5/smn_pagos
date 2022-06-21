setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
setComboValue('smn_forma_pago_rf','${fld:smn_forma_pago_rf}','form1');
setComboValue('smn_entidad_financiera_rf','${fld:smn_entidad_financiera_rf}','form1');
setComboValue('fdb_genera_transaccion','${fld:fdb_genera_transaccion}','form1');
document.form1.fdb_programa_impresion.value='${fld:fdb_programa_impresion@js}';
setComboValue('fdb_estatus','${fld:fdb_estatus}','form1');
document.form1.fdb_vigencia.value='${fld:fdb_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_formpag_documento_banco_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

