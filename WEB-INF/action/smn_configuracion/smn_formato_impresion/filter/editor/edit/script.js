document.form1.foi_codigo.value='${fld:foi_codigo@js}';
document.form1.foi_descripcion.value='${fld:foi_descripcion@js}';
document.form1.foi_texto.value='${fld:foi_texto@js}';
setComboValue('foi_estatus','${fld:foi_estatus}','form1');
document.form1.foi_vigencia.value='${fld:foi_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_clave_formato_impresion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

 

