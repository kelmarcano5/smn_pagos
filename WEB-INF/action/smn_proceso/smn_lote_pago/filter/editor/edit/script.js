setDataSelect2('smn_entidad_financiera_rf','${fld:smn_entidad_financiera_rf}');
setDataSelect2('smn_cuenta_bancaria_rf','${fld:smn_cuenta_bancaria_rf}');
setDataSelect2('smn_forma_pago_rf','${fld:smn_forma_pago_rf}');
setDataSelect2('smn_documento_id','${fld:smn_documento_id}');
setDataSelect2('smn_tasa_cambio_rf','${fld:smn_tasa_cambio_rf}');
setDataSelect2('smn_moneda_rf','${fld:smn_moneda_rf}');

setDataSelect2('smn_canal_pago_id','${fld:smn_canal_pago_id}');
setDataSelect2('lpa_tipo_comprobante_contable_id','${fld:lpa_tipo_comprobante_contable_id}');
setDataSelect2('lpa_estatus','${fld:lpa_estatus}');

//setComboValue('smn_entidad_financiera_rf','${fld:smn_entidad_financiera_rf}','form1');
//setComboValue('smn_cuenta_bancaria_rf','${fld:smn_cuenta_bancaria_rf}','form1');
//setComboValue('smn_forma_pago_rf','${fld:smn_forma_pago_rf}','form1');
//setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
document.form1.lpa_numero_lote.value='${fld:lpa_numero_lote@js}';
document.form1.lpa_descripcion_lote.value='${fld:lpa_descripcion_lote@js}';
document.form1.lpa_fecha_lote.value='${fld:lpa_fecha_lote@dd-MM-yyyy}';
document.form1.lpa_monto_lote_ml.value='${fld:lpa_monto_lote_ml@#,###,##0.00}';
//setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');
//setComboValue('smn_tasa_cambio_rf','${fld:smn_tasa_cambio_rf}','form1');
document.form1.lpa_monto_lote_ma.value='${fld:lpa_monto_lote_ma@#,###,##0.00}';
//setComboValue('smn_canal_pago_id','${fld:smn_canal_pago_id}','form1');
document.form1.lpa_ano_comprobante_contable.value='${fld:lpa_ano_comprobante_contable@#,###,###}';
document.form1.lpa_periodo_comprobante_contable.value='${fld:lpa_periodo_comprobante_contable@#,###,###}';
//setComboValue('lpa_tipo_comprobante_contable_id','${fld:lpa_tipo_comprobante_contable_id}','form1');
document.form1.lpa_numero_comprobante_contable.value='${fld:lpa_numero_comprobante_contable@#,###,###}';
//setComboValue('lpa_estatus','${fld:lpa_estatus}','form1');
document.form1.id.value='${fld:smn_lote_pago_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

