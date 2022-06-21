setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
setComboValue('smn_rol_id','${fld:smn_rol_id}','form1');
setComboValue('smn_entidad_bancaria_rf','${fld:smn_entidad_bancaria_rf}','form1');
setComboValue('smn_cuenta_bancaria_rf','${fld:smn_cuenta_bancaria_rf}','form1');
setComboValue('smn_usuario_id','${fld:smn_usuario_id}','form1');
setComboValue('smn_clave_formato_impresion_id','${fld:smn_clave_formato_impresion_id}','form1');
document.form1.sdp_fecha_solicitud.value='${fld:sdp_fecha_solicitud@dd-MM-yyyy}';
document.form1.sdp_numero.value='${fld:sdp_numero@#,###,###}';
document.form1.id.value='${fld:smn_solicitud_documento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

