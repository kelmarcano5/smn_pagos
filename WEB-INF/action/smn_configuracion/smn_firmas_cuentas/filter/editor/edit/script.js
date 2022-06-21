document.form1.fcb_codigo.value='${fld:fcb_codigo@js}';
document.form1.fcb_descripcion.value='${fld:fcb_descripcion@js}';
setComboValue('smn_cuentas_bancarias_rf','${fld:smn_cuentas_bancarias_rf}','form1');
document.form1.fcb_cantidad.value='${fld:fcb_cantidad@#,###,###}';
setComboValue('smn_tipo_firma_id','${fld:smn_tipo_firma_id}','form1');
setComboValue('fcb_estatus','${fld:fcb_estatus}','form1');
document.form1.fcb_vigencia.value='${fld:fcb_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_firmas_cuentas_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.fcb_codigo.disabled=true;
 

