setComboValue('smn_usuario_rf','${fld:smn_usuario_rf}','form1');
setComboValue('rol_tipo','${fld:rol_tipo}','form1');
setComboValue('smn_corporaciones_rf','${fld:smn_corporaciones_rf}','form1');
setComboValue('smn_entidades_rf','${fld:smn_entidades_rf}','form1');
setComboValue('smn_sucursales_rf','${fld:smn_sucursales_rf}','form1');
setComboValue('smn_areas_servicios_rf','${fld:smn_areas_servicios_rf}','form1');
setComboValue('smn_unidades_servicios_rf','${fld:smn_unidades_servicios_rf}','form1');
setComboValue('smn_estructura_organizacional_rf','${fld:smn_estructura_organizacional_rf}','form1');
setComboValue('rol_estatus','${fld:rol_estatus}','form1');
document.form1.rol_vigencia.value='${fld:rol_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_rol_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

