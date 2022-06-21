document.form1.sdp_fecha_recepcion.value='${fld:sdp_fecha_recepcion@dd-MM-yyyy}';
document.form1.sdp_numero_inicial.value='${fld:sdp_numero_inicial@#,###,###}';
document.form1.sdp_numero_final.value='${fld:sdp_numero_final@#,###,###}';
document.form1.sdp_cantidad_documentos.value='${fld:sdp_cantidad_documentos@#,###,###}';
document.form1.id.value='${fld:smn_solicitud_documento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_document_recepcion}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

