document.form1.tfi_codigo.value='${fld:tfi_codigo@js}';
document.form1.tfi_descripcion.value='${fld:tfi_descripcion@js}';
setComboValue('tfi_estatus','${fld:tfi_estatus}','form1');
document.form1.tfi_vigencia.value='${fld:tfi_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_tipo_firma_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tfi_codigo.disabled=true;
 

