setComboValue('smn_proveedor_id','${fld:smn_proveedor_id}','form1');
document.form1.pdr_fecha_desde.value='${fld:pdr_fecha_desde@dd-MM-yyyy}';
document.form1.pdr_fecha_hasta.value='${fld:pdr_fecha_hasta@dd-MM-yyyy}';
setComboValue('smn_descuento_retencion_rf','${fld:smn_descuento_retencion_rf}','form1');
document.form1.pdr_monto_total.value='${fld:pdr_monto_total@#,###,##0.00}';
document.form1.pdr_monto_parcial_descuento.value='${fld:pdr_monto_parcial_descuento@#,###,##0.00}';
document.form1.id.value='${fld:smn_plan_descuento_retencion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

