setComboValue('smn_autorizador_id','${fld:smn_autorizador_id}','form1');
setComboValue('smn_entidades_financieras_rf','${fld:smn_entidades_financieras_rf}','form1');
setComboValue('smn_tipo_firma_id','${fld:smn_tipo_firma_id}','form1');
setComboValue('fcb_estatus','${fld:fcb_estatus}','form1');
document.form1.fcb_vigencia.value='${fld:fcb_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_aut_firmas_cuentas_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

