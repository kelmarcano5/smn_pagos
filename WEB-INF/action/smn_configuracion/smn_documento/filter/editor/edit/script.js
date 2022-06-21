setComboValue('smn_documentos_generales_rf','${fld:smn_documentos_generales_rf}','form1');
setComboValue('smn_tipo_documento_id','${fld:smn_tipo_documento_id}','form1');
setComboValue('smn_modulo_origen_rf','${fld:smn_modulo_origen_rf}','form1');
document.form1.doc_codigo.value='${fld:doc_codigo@js}';
document.form1.doc_descripcion.value='${fld:doc_descripcion@js}';
setComboValue('doc_ver_recepcion_item','${fld:doc_ver_recepcion_item}','form1');
setComboValue('doc_ver_recepcion_servicio','${fld:doc_ver_recepcion_servicio}','form1');
setComboValue('doc_ver_orden_compra','${fld:doc_ver_orden_compra}','form1');
setComboValue('doc_ver_control_documento','${fld:doc_ver_control_documento}','form1');
document.form1.doc_porcentaje.value='${fld:doc_porcentaje@#.00}';
replaceDecimal(document.form1.doc_porcentaje);
document.form1.doc_monto_fijo.value='${fld:doc_monto_fijo@#.00}';
replaceDecimal(document.form1.doc_monto_fijo);
setComboValue('doc_estatus','${fld:doc_estatus}','form1');
document.form1.doc_vigencia.value='${fld:doc_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_documento_id}';

document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
<rows>setCheckboxValue('smn_entidades_id','${fld:smn_entidades_id}','form1');</rows>

