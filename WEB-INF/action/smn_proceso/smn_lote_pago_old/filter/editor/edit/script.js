setComboValue('smn_entidad_financiera_rf','${fld:smn_entidad_financiera_rf}','form1');
setComboValue('smn_cuenta_bancaria_rf','${fld:smn_cuenta_bancaria_rf}','form1');
setComboValue('smn_forma_pago_rf','${fld:smn_forma_pago_rf}','form1');
setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
document.form1.lpa_numero_lote.value='${fld:lpa_numero_lote@js}';
document.form1.lpa_descripcion_lote.value='${fld:lpa_descripcion_lote@js}';
document.form1.lpa_fecha_lote.value='${fld:lpa_fecha_lote@dd-MM-yyyy}';
document.form1.lpa_monto_lote_ml.value='${fld:lpa_monto_lote_ml@#,###,##0.00}';
document.form1.lpa_monto_lote_ma.value='${fld:lpa_monto_lote_ma@#,###,##0.00}';
setComboValue('smn_estatus_documento','${fld:smn_estatus_documento}','form1');
document.form1.id.value='${fld:smn_lote_pago_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

