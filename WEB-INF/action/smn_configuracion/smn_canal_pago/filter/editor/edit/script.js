document.form1.cdp_codigo.value='${fld:cdp_codigo@js}';
document.form1.cdp_descripcion.value='${fld:cdp_descripcion@js}';
setComboValue('cdp_estatus','${fld:cdp_estatus}','form1');
document.form1.cdp_vigencia.value='${fld:cdp_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_canal_pago_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cdp_codigo.disabled=true;
 

