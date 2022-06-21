var tipo = ${fld:refid};
if(tipo == 0){
	document.form1.doc_porcentaje.disabled=true;
	document.form1.doc_monto_fijo.disabled=true;
	
}else{
	document.form1.doc_porcentaje.disabled=false;
	document.form1.doc_monto_fijo.disabled=false;
	
}
