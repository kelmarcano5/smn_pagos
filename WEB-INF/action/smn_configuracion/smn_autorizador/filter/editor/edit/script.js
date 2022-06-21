setComboValue('smn_usuario_rf','${fld:smn_usuario_rf}','form1');
setComboValue('smn_entidades_rf','${fld:smn_entidades_rf}','form1');
setComboValue('smn_sucursales_rf','${fld:smn_sucursales_rf}','form1');
setComboValue('aut_estatus','${fld:aut_estatus}','form1');
document.form1.aut_vigencia.value='${fld:aut_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_autorizador_id}';

document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
<rows>setCheckboxValue('smn_documento_id','${fld:smn_documento_id}','form1');</rows>
<rows>setCheckboxValue('smn_agenda_id','${fld:smn_agenda_id}','form1');</rows>

