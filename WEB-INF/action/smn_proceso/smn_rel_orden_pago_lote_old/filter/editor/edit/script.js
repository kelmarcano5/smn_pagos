setComboValue('smn_orden_pago_id','${fld:smn_orden_pago_id}','form1');
setComboValue('smn_lote_pago_id','${fld:smn_lote_pago_id}','form1');
document.form1.smn_proveedor_rf.value='${fld:smn_proveedor_rf@#,###,###}';
setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
document.form1.eol_numero_pago.value='${fld:eol_numero_pago@#,###,###}';
document.form1.eol_fecha_pago.value='${fld:eol_fecha_pago@dd-MM-yyyy}';
document.form1.eol_referencia_bancaria.value='${fld:eol_referencia_bancaria@js}';
document.form1.eol_monto_pago_ml.value='${fld:eol_monto_pago_ml@#,###,##0.00}';
document.form1.eol_monto_incremento_ml.value='${fld:eol_monto_incremento_ml@#,###,##0.00}';
document.form1.eol_monto_anticipo_ml.value='${fld:eol_monto_anticipo_ml@#,###,##0.00}';
document.form1.eol_monto_retencion_ml.value='${fld:eol_monto_retencion_ml@#,###,##0.00}';
document.form1.eol_monto_neto_ml.value='${fld:eol_monto_neto_ml@#,###,##0.00}';
document.form1.eol_diferencial_cambiario_ml.value='${fld:eol_diferencial_cambiario_ml@#,###,##0.00}';
setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');
setComboValue('smn_tasa_cambio_rf','${fld:smn_tasa_cambio_rf}','form1');
document.form1.eol_monto_pago_ma.value='${fld:eol_monto_pago_ma@#,###,##0.00}';
document.form1.eol_monto_incremento_ma.value='${fld:eol_monto_incremento_ma@#,###,##0.00}';
document.form1.eol_monto_anticipo_ma.value='${fld:eol_monto_anticipo_ma@#,###,##0.00}';
document.form1.eol_monto_retencion_ma.value='${fld:eol_monto_retencion_ma@#,###,##0.00}';
document.form1.eol_monto_neto_ma.value='${fld:eol_monto_neto_ma@#,###,##0.00}';
setComboValue('eol_estatus','${fld:eol_estatus}','form1');
document.form1.id.value='${fld:smn_rel_orden_pago_lote_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

