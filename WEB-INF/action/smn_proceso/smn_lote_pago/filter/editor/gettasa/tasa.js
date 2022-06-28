listboxClear("smn_tasa_cambio_rf");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.smn_tasa_cambio_rf.add(optionChoose, 0);

<smn_tasa_cambio_rf_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js} -> ${fld:tasa_cambio@#,###,##0.00}"; 
	option.value = "${fld:id}";
	document.form1.smn_tasa_cambio_rf.add(option, 0);
</smn_tasa_cambio_rf_rows>