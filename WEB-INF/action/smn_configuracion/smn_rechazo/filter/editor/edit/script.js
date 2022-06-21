document.form1.rec_codigo.value='${fld:rec_codigo@js}';
document.form1.rec_descripcion.value='${fld:rec_descripcion@js}';
setComboValue('rec_estatus','${fld:rec_estatus}','form1');
document.form1.rec_vigencia.value='${fld:rec_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_rechazo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.rec_codigo.disabled=true;
 

